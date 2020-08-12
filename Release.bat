C:\Factory\Tools\RDMD.exe /RC out

C:\Factory\SubTools\makeDDResourceFile.exe ^
	C:\Dat\Resource ^
	/SD Fairy\Donut3\General ^
	/SD Etoile\ScarletDiamond ^
	out\Resource.dat ^
	C:\Factory\Program\MaskGZDataForDonut3\MaskGZData.exe

C:\Factory\SubTools\CallConfuserCLI.exe ScarletDiamond\ScarletDiamond\bin\Release\ScarletDiamond.exe out\ScarletDiamond.exe
rem COPY /B ScarletDiamond\ScarletDiamond\bin\Release\ScarletDiamond.exe out
COPY /B ScarletDiamond\ScarletDiamond\bin\Release\Chocolate.dll out
COPY /B ScarletDiamond\ScarletDiamond\bin\Release\DxLib.dll out
COPY /B ScarletDiamond\ScarletDiamond\bin\Release\DxLib_x64.dll out
COPY /B ScarletDiamond\ScarletDiamond\bin\Release\DxLibDotNet.dll out

C:\Factory\Tools\xcp.exe doc out
C:\Factory\Tools\xcp.exe C:\Dev\Fairy\Donut3\doc out

C:\Factory\SubTools\zip.exe /PE- /RVE- /G out ScarletDiamond
C:\Factory\Tools\summd5.exe /M out

IF NOT "%1" == "/-P" PAUSE
