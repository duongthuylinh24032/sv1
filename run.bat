@echo off
java -Xms2G -Xmx4G -XX:+UseG1GC -XX:+ParallelRefProcEnabled -XX:MaxGCPauseMillis=100 ^
-XX:+UnlockExperimentalVMOptions -XX:+DisableExplicitGC -XX:+AlwaysPreTouch ^
-XX:G1HeapRegionSize=4M -XX:G1ReservePercent=20 -XX:G1HeapWastePercent=5 ^
-XX:G1MixedGCCountTarget=4 -XX:InitiatingHeapOccupancyPercent=15 -XX:G1MixedGCLiveThresholdPercent=90 ^
-XX:+PerfDisableSharedMem -XX:MaxTenuringThreshold=1 ^
-Dfile.encoding=UTF-8 -Dcom.mojang.eula.agree=true ^
-jar purpur-1.21-2284.jar nogui

pause
