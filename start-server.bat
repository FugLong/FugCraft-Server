@echo off
echo Starting FugCraft Server...
echo.

REM Try specific JDK first, then fall back to system Java
if exist "C:\Program Files\Java\jdk-21\bin\java.exe" (
    echo Using JDK 21...
    "C:\Program Files\Java\jdk-21\bin\java.exe" ^
      -Xms4G -Xmx12G ^
      -XX:+UseG1GC ^
      -XX:+ParallelRefProcEnabled ^
      -XX:MaxGCPauseMillis=200 ^
      -XX:+UnlockExperimentalVMOptions ^
      -XX:+DisableExplicitGC ^
      -XX:+AlwaysPreTouch ^
      -XX:G1NewSizePercent=30 ^
      -XX:G1MaxNewSizePercent=40 ^
      -XX:G1HeapRegionSize=8M ^
      -XX:G1ReservePercent=20 ^
      -XX:G1HeapWastePercent=5 ^
      -XX:G1MixedGCCountTarget=4 ^
      -XX:InitiatingHeapOccupancyPercent=15 ^
      -XX:G1MixedGCLiveThresholdPercent=90 ^
      -XX:G1RSetUpdatingPauseTimePercent=5 ^
      -XX:SurvivorRatio=32 ^
      -XX:+PerfDisableSharedMem ^
      -XX:MaxTenuringThreshold=1 ^
      -Dusing.aikars.flags=https://mcflags.emc.gs ^
      -Daikars.new.flags=true ^
      -jar fabric-server-mc.1.21.8-loader.0.17.2-launcher.1.1.0.jar nogui
) else (
    echo JDK 21 not found, trying system Java...
    java ^
      -Xms4G -Xmx12G ^
      -XX:+UseG1GC ^
      -XX:+ParallelRefProcEnabled ^
      -XX:MaxGCPauseMillis=200 ^
      -XX:+UnlockExperimentalVMOptions ^
      -XX:+DisableExplicitGC ^
      -XX:+AlwaysPreTouch ^
      -XX:G1NewSizePercent=30 ^
      -XX:G1MaxNewSizePercent=40 ^
      -XX:G1HeapRegionSize=8M ^
      -XX:G1ReservePercent=20 ^
      -XX:G1HeapWastePercent=5 ^
      -XX:G1MixedGCCountTarget=4 ^
      -XX:InitiatingHeapOccupancyPercent=15 ^
      -XX:G1MixedGCLiveThresholdPercent=90 ^
      -XX:G1RSetUpdatingPauseTimePercent=5 ^
      -XX:SurvivorRatio=32 ^
      -XX:+PerfDisableSharedMem ^
      -XX:MaxTenuringThreshold=1 ^
      -Dusing.aikars.flags=https://mcflags.emc.gs ^
      -Daikars.new.flags=true ^
      -jar fabric-server-mc.1.21.8-loader.0.17.2-launcher.1.1.0.jar nogui
)

echo.
echo Server stopped. Press any key to exit...
pause
