# Beryl + VulkanMod + Distant Horizons — Compatibility Investigation

**Status:** Unimplemented / broken today  
**FugCraft stance:** Supported = VulkanMod + DH (+ DH Vulkan extension). Experimental = Beryl. **Do not expect DH LODs while Beryl shaders are enabled.**  
**Last updated:** 2026-05-27  
**Minecraft target:** Fabric 26.1.2  

---

## Executive summary

FugCraft is built around **VulkanMod + Distant Horizons** for extreme render distance and FPS. **Beryl** is Collateral’s official Vulkan shader pipeline (same ecosystem as VulkanMod). In practice:

| Stack | Works today? |
|-------|----------------|
| VulkanMod + Distant Horizons + [DH Vulkan extension](https://github.com/Braffolk/distant-horizons-vulkanmod) | **Yes** |
| Above + Beryl shaders **off** | **Yes** |
| Above + Beryl shaders **on** | **No** — DH LOD terrain does not appear |

This is not a misconfigured DH preset. The DH Vulkan extension was **designed and shipped for a no-external-shader render path**. Beryl replaces that path. Nobody has finished the integration yet.

### Recommended play for FugCraft

1. **Ship and document the supported path:** VulkanMod + DH + DH Vulkan extension, Beryl optional but **off by default**; docs say LODs require shaders disabled.
2. **Do not promise** a community “compat mod” in the modpack unless/until upstream or a maintained fork proves it stable.
3. **Upstream pressure (low cost, high leverage):** File clear repro issues linking VulkanMod/Beryl and DH Vulkan extension — same author family for VM/Beryl makes coordination plausible.
4. **Optional R&D spike (your time):** Fork `distant-horizons-vulkanmod`, confirm hook miss with logs, decompile 26.1.2 Beryl (reportedly unobfuscated) to find injection points — only if you want to contribute upstream or prototype.
5. **Revisit when:** Beryl changelog or DH Vulkan extension mentions shader compatibility, or Collateral documents a DH hook API.

---

## The three mods (who owns what)

| Mod | Author / maintainer | Role |
|-----|---------------------|------|
| **VulkanMod** | Collateral ([xCollateral/VulkanMod](https://github.com/xCollateral/VulkanMod), LGPL) | Replaces OpenGL with Vulkan; rewrites MC’s render engine |
| **Beryl** | Collateral ([Modrinth](https://modrinth.com/mod/beryl), **ARR license**, jar-only) | Vulkan shader pipeline; integrated shader pack; toggled in video settings |
| **Distant Horizons** | DH team (official mod) | LOD generation + rendering API |
| **DH — VulkanMod extension** | Braffolk ([distant-horizons-vulkanmod](https://github.com/Braffolk/distant-horizons-vulkanmod)) | Bridges DH LOD draws onto VulkanMod’s pipeline |

**Important:** Beryl is **not** a random third-party shader loader. It is the **intended** way to get shaders on VulkanMod (VulkanMod’s own readme still lists shader support as a todo; Beryl is that direction).

---

## Observed behavior (FugCraft repro)

1. Install: VulkanMod, Distant Horizons, DH Vulkan extension, Beryl (`beryl_26.1.2-0.2.0-alpha.jar` or current).
2. Launch with **Beryl shaders disabled** → DH LOD chunks visible at distance.
3. Enable **Beryl shaders** (video settings / toggle) → **DH LOD chunks disappear entirely** (not “ugly” — absent).

Vanilla nearby terrain and Beryl shading may still look fine; only the DH LOD layer vanishes.

---

## How DH rendering works on VulkanMod (no Beryl)

Vanilla DH hooks Minecraft’s chunk-section render path. **VulkanMod redirects** `ChunkSectionsToRender.renderGroup` → `LevelRenderer.renderSectionLayer`, so **DH’s stock mixins never run**.

The extension fixes that with a **render bridge**:

- **File:** `DhVulkanRenderBridge.java` in `distant-horizons-vulkanmod`
- **Trigger:** `MixinLevelRendererRenderBridge` injects inside `LevelRenderer.lambda$addMainPass$0` **immediately before** `renderGroup` is invoked for:
  - `ChunkSectionLayerGroup.OPAQUE` → `ClientApi.INSTANCE.renderLods()`
  - `ChunkSectionLayerGroup.TRANSLUCENT` → `ClientApi.INSTANCE.renderDeferredLodsForShaders()`
- **Matrices:** If DH’s normal `LevelRenderer` / `GameRenderer` mixins don’t run in time, the bridge falls back to `VRenderSystem.projection` / `modelView`.
- **Composite:** Separate Vulkan pipelines (`DhCompositePipeline`, `DhDepthReaderPipeline`, SSAO, fog) composite DH color/depth into MC’s swapchain with careful depth/layout rules.

The extension readme and roadmap explicitly list:

> **Shader pack support** — VulkanMod does not support shader packs (Iris/OptiFine)  
> **Phase 8: Iris/Shader Pack Compatibility — N/A** (blocked until VulkanMod supports shaders)

Beryl is effectively “Phase 8 happened elsewhere,” but **the DH extension was never updated for it**.

---

## What Beryl does (from jar / metadata analysis)

**Jar examined:** `beryl_26.1.2-0.2.0-alpha.jar` (FugCraft Prism instance)

| Finding | Detail |
|---------|--------|
| `fabric.mod.json` | Depends on `vulkanmod >= 0.6.6`; client-only; entry `net.beryl.BerylMod` |
| Author | **Collateral** (same as VulkanMod) |
| License | **ARR** (All Rights Reserved) on Modrinth — **no public source repo** |
| DH awareness | **None** — no class names, strings, or mixins referencing Distant Horizons |
| Render takeover | Mixins on `GameRenderer`, `LevelRenderer`, VulkanMod `WorldRenderer`, plus `ShaderRenderPipeline`, `RenderingPipeline`, bloom/shadow passes |

Beryl is a **full alternate render graph** when shaders are enabled, not a post-process on top of the same main pass DH already hooks.

Community note (not verified by us): some builds of Beryl for 26.1.2 are described as **unobfuscated**, meaning bytecode inspection / decompilation for research may be feasible — still **not** the same as an open-source license.

---

## Root cause analysis (why LODs vanish)

### Hypothesis A — **DH render hook never runs** (primary, matches “completely gone”)

When Beryl is on, the frame likely **does not execute** `lambda$addMainPass$0` → `renderGroup` the same way, so:

- `DhVulkanRenderBridge.onTerrainLayerGroup()` is never called  
- `renderLods()` never runs  
- Result: **zero** LOD geometry submitted  

**Confidence:** High. This is exactly how the extension is wired; Beryl’s `LevelRendererM` / `GameRendererM` / `WorldRendererMixin` exist to replace the path the bridge depends on.

### Hypothesis B — **LOD draws but composite targets wrong buffers** (secondary)

If hooks fired, DH still composites via extension pipelines that assume **non-Beryl** framebuffer layout (swapchain depth, `DefaultMainPass`, etc.). Beryl uses multi-pass FBOs (`ShaderMainPass`, bloom, blits). LODs could be:

- Rendered off-screen  
- Composited with wrong depth → fully discarded  
- Overwritten by a later Beryl pass  

**Confidence:** Medium. Would matter after fixing A; required for a *correct* shader + DH image.

### Hypothesis C — **`canRenderOrThrow()` / shader-mode API mismatch**

The bridge calls `renderDeferredLodsForShaders()` on the translucent pass — DH’s Iris-era naming for shader-aware deferred LOD work. The Vulkan extension may not satisfy DH’s internal “can render with external shaders” checks when Beryl is active.

**Confidence:** Medium-low. Check logs for one-time `[DH-VulkanMod] Skipping LOD render` debug lines.

---

## Licensing and “closed source” (practical impact)

| Asset | Open? | Impact on a compat mod |
|-------|-------|-------------------------|
| `distant-horizons-vulkanmod` | **Yes** (you can fork & PR) | You can fix the DH side |
| VulkanMod | **Yes** (LGPL) | You can read VM render flow |
| Beryl | **No** (ARR, jar only) | No clean PR to Beryl; mixin/decompile spike only; breaks every alpha |
| Distant Horizons | Official releases | API behavior documented via DH; no need to fork DH for basic integration |

**Takeaway:** A durable fix almost certainly needs **Collateral** to expose a stable hook in Beryl (or merge DH calls into `ShaderRenderPipeline`), not a FugCraft-only jar shim.

---

## Roadblocks

1. **Architectural** — Two systems both want to own the frame graph (Beryl vs DH Vulkan bridge injection site).
2. **Documentation** — DH extension readme still says “no shader packs”; Beryl postdates that design.
3. **Composite / depth** — DH Vulkan spent significant effort on depth copy, layout transitions, NVIDIA vs MoltenVK; Beryl adds new attachments.
4. **Maintenance** — Beryl is `0.2.0-alpha`; any mixin-based hack will rot quickly.
5. **Legal / social** — ARR on Beryl limits redistribution of patched jars; prefer upstream coordination.
6. **No public issue thread** — As of investigation date, no widely indexed “Beryl + DH compat” solution.

---

## What it would take to fix (realistic phases)

### Phase 0 — Confirm diagnosis (~1–2 hours)

- Run client with debug logging enabled for `DH-VulkanMod` / DH.
- **Beryl off:** expect once per session: `LOD render hooked at VulkanMod terrain layer`.
- **Beryl on:** if that log never appears → Hypothesis A confirmed.
- Note mod versions: VulkanMod, DH, DH Vulkan extension, Beryl exact jar.

### Phase 1 — **Trigger** LOD render inside Beryl’s pipeline (hard; needs Collateral or decompile)

**Goal:** Call the same logic as `DhVulkanRenderBridge.onTerrainLayerGroup(OPAQUE/TRANSLUCENT, matrices)` at the correct point in Beryl’s `ShaderRenderPipeline` / world pass — after camera matrices are known, before or during terrain shading as DH expects.

**Owners:**

- **Best:** Beryl (Collateral) adds official hook / calls into DH API.
- **Possible:** DH Vulkan extension mixins **into Beryl classes** (fragile).

**Effort:** Days to weeks for someone who knows both codebases; not a one-evening tweak if done properly.

### Phase 2 — **Composite** DH into Beryl’s framebuffers (harder)

**Goal:** DH color/depth must composite against **Beryl’s** depth/color targets, not only the pre-shader swapchain path.

Touches: `DhCompositePipeline`, `DhDepthReaderPipeline`, render pass ordering, possibly Beryl’s `ShaderMainPass` / blit chain.

**Effort:** Weeks; graphics debugging (RenderDoc if applicable), multi-GPU/vendor testing.

### Phase 3 — **Polish** (shader-mode features)

DH + Iris on OpenGL still has per-shader edge cases (water, glass, fog). Expect similar with Beryl:

- Cloud ordering vs DH  
- Weather in front of LODs  
- Serene Seasons / SSDH if used  
- Performance when both heavy passes run  

**Effort:** Ongoing.

---

## Options compared (the actual “play”)

| Option | Pros | Cons | FugCraft fit |
|--------|------|------|----------------|
| **A. Document & ship DH-only path** | Zero dev risk; honest | No Beryl+DH marketing | **Default — do this** |
| **B. Upstream issues only** | May unblock everyone | Slow; no guarantee | **Do this in parallel** |
| **C. Fork DH Vulkan ext + Beryl mixins** | You control DH side | Fragile; ARR; alpha churn | Only if you want to R&D |
| **D. Ask Collateral for hook / source access** | Cleanest fix | Depends on maintainer | Worth one polite, technical issue |
| **E. Drop Beryl from pack** | Simplest UX | Loses experimental shaders | Only if shaders aren’t worth the confusion |

**We do not recommend** promising players a FugCraft-maintained “BerylDHCompat” mod until Phase 1+2 are proven on your exact version pin.

---

## Investigation checklist (for issues or spikes)

### Environment

- [ ] Minecraft 26.1.2, Fabric loader version
- [ ] VulkanMod version (≥ 0.6.6)
- [ ] Distant Horizons version (3.0.x for 26.1.2)
- [ ] `distant-horizons-vulkanmod` extension jar version / commit
- [ ] Beryl jar exact filename and version

### Repro steps

1. Fresh superflat or existing world with DH generating LODs.
2. Stand where LODs are visible (Beryl **off**).
3. Toggle Beryl shaders **on** without changing DH settings.
4. Observe LODs disappear.

### Logs to capture

- [ ] `latest.log` from toggle off → on
- [ ] Search: `DH-VulkanMod`, `Skipping LOD render`, `LOD render hooked`
- [ ] Any DH `canRender` / exception stack traces

### Optional bytecode spike (26.1.2 Beryl)

- [ ] List mixin targets from `beryl.mixins.json`
- [ ] Decompile `GameRendererM`, `LevelRendererM`, `ShaderRenderPipeline`, `WorldRendererMixin`
- [ ] Map Beryl’s per-frame pass order vs `lambda$addMainPass$0`

---

## Draft text for upstream issues

### For [distant-horizons-vulkanmod](https://github.com/Braffolk/distant-horizons-vulkanmod)

**Title:** Beryl (VulkanMod shaders) enabled → LODs never render; bridge likely not triggered  

**Body (template):**

> **Versions:** MC 26.1.2, VulkanMod X, DH X, dh-vulkanmod X, Beryl 0.2.0-alpha  
> **Works:** VM + DH + extension, Beryl disabled.  
> **Breaks:** Enable Beryl shaders → all DH LOD terrain disappears (not z-fighting / wrong color — absent).  
> **Hypothesis:** `MixinLevelRendererRenderBridge` injects at `lambda$addMainPass$0` before `renderGroup`; Beryl’s shader pipeline bypasses this path when enabled.  
> **Ask:** Is Beryl compatibility on the roadmap? Would you accept a PR that mixins into Beryl’s pipeline to call `DhVulkanRenderBridge`, or should this be coordinated with Collateral?  
> **Logs:** [attach]

### For VulkanMod / Beryl (Collateral)

**Title:** Integration point for Distant Horizons LOD render when Beryl shaders enabled  

**Body (template):**

> FugCraft and others use VulkanMod + [DH Vulkan extension](https://github.com/Braffolk/distant-horizons-vulkanmod). LODs work until Beryl shaders are toggled on.  
> **Request:** Document (or add) a stable hook in Beryl’s render graph to invoke DH LOD rendering + composite, analogous to the extension’s `DhVulkanRenderBridge` calls at opaque/translucent terrain.  
> Happy to test snapshots / provide logs.

---

## References

- DH Vulkan extension repo: https://github.com/Braffolk/distant-horizons-vulkanmod  
- Extension readme (explicit “no shader packs”): `Readme.md` in that repo  
- Roadmap Phase 8 (Iris/shaders N/A): `docs/vulkan_implementation_roadmap.md`  
- VulkanMod: https://github.com/xCollateral/VulkanMod  
- Beryl: https://modrinth.com/mod/beryl  
- FugCraft client mod list (canonical): `client-resources/FugCraft-mod-list.json`  

---

## Revision history

| Date | Notes |
|------|--------|
| 2026-05-27 | Initial investigation writeup from jar analysis + dh-vulkanmod source review |
