start /min cmd /c runreplica.bat
timeout /t 1
start /min cmd /c runclient.bat
timeout /t 1
start /min cmd /c runolympus.bat
timeout /t 1
start /min cmd /k runinit.bat %1