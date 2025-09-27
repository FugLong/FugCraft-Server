#!/bin/bash

echo "Starting FugCraft Server..."
echo

# Try common Java locations, then fall back to system Java
if [ -f "/usr/lib/jvm/java-21-openjdk/bin/java" ]; then
    echo "Using OpenJDK 21..."
    JAVA_CMD="/usr/lib/jvm/java-21-openjdk/bin/java"
elif [ -f "/usr/lib/jvm/java-17-openjdk/bin/java" ]; then
    echo "Using OpenJDK 17..."
    JAVA_CMD="/usr/lib/jvm/java-17-openjdk/bin/java"
elif [ -f "/usr/lib/jvm/java-11-openjdk/bin/java" ]; then
    echo "Using OpenJDK 11..."
    JAVA_CMD="/usr/lib/jvm/java-11-openjdk/bin/java"
elif [ -f "/opt/homebrew/bin/java" ]; then
    echo "Using Homebrew Java..."
    JAVA_CMD="/opt/homebrew/bin/java"
elif [ -f "/usr/local/bin/java" ]; then
    echo "Using local Java..."
    JAVA_CMD="/usr/local/bin/java"
else
    echo "Using system Java..."
    JAVA_CMD="java"
fi

# Run the server with Aikar's flags
$JAVA_CMD \
  -Xms4G -Xmx12G \
  -XX:+UseG1GC \
  -XX:+ParallelRefProcEnabled \
  -XX:MaxGCPauseMillis=200 \
  -XX:+UnlockExperimentalVMOptions \
  -XX:+DisableExplicitGC \
  -XX:+AlwaysPreTouch \
  -XX:G1NewSizePercent=30 \
  -XX:G1MaxNewSizePercent=40 \
  -XX:G1HeapRegionSize=8M \
  -XX:G1ReservePercent=20 \
  -XX:G1HeapWastePercent=5 \
  -XX:G1MixedGCCountTarget=4 \
  -XX:InitiatingHeapOccupancyPercent=15 \
  -XX:G1MixedGCLiveThresholdPercent=90 \
  -XX:G1RSetUpdatingPauseTimePercent=5 \
  -XX:SurvivorRatio=32 \
  -XX:+PerfDisableSharedMem \
  -XX:MaxTenuringThreshold=1 \
  -Dusing.aikars.flags=https://mcflags.emc.gs \
  -Daikars.new.flags=true \
  -jar fabric-server-mc.1.21.8-loader.0.17.2-launcher.1.1.0.jar nogui

echo
echo "Server stopped."
