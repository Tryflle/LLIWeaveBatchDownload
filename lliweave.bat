@echo off
echo Downloading contents to /lunarlauncherinject
mkdir lunarlauncherinject
cd lunarlauncherinject
powershell -Command "Invoke-WebRequest  https://github.com/Nilsen84/lunar-launcher-inject/releases/download/v1.3.0/lunar-launcher-inject-windows-1.3.0.exe -OutFile lunar-launcher-inject-windows-1.3.0.exe"
powershell -Command "Invoke-WebRequest https://github.com/Weave-MC/Weave-Loader/releases/download/v0.2.3/Weave-Loader-Agent-0.2.3.jar -OutFile Weave-Loader-Agent-0.2.3.jar"
timeout /t 1
start lunar-launcher-inject-windows-1.3.0.exe
echo If the lunar client launcher opened, lunar has been injected into and attached with weave.
cd %userprofile%
mkdir .weave
cd .weave
mkdir mods
cd mods
explorer %userprofile%/.weave/mods
echo Put your mods in %userprofile%/.weave/mods (explorer tab has been opened at this location)
echo Remember weave only supports WEAVE mods. 
echo Once you are ready, launch lunar client. You will need to open the lunar launcher inject file inside of the toilet folder created
echo where you downloaded the bat file every time to use weave.
echo Thanks for using my tool!
pause
