C:\Factory\Tools\RDMD.exe /RC out

C:\Factory\SubTools\makeDDResourceFile.exe ^
	C:\Dat\Resource ^
	/SD Fairy\Donut3\General ^
	/SD Etoile\G4YokoActTK ^
	out\Resource.dat ^
	C:\Factory\Program\MaskGZDataForDonut3\MaskGZData.exe

C:\Factory\SubTools\CallConfuserCLI.exe G4YokoActTK\G4YokoActTK\bin\Release\G4YokoActTK.exe out\G4YokoActTK.exe
rem COPY /B G4YokoActTK\G4YokoActTK\bin\Release\G4YokoActTK.exe out
COPY /B G4YokoActTK\G4YokoActTK\bin\Release\Chocolate.dll out
COPY /B G4YokoActTK\G4YokoActTK\bin\Release\DxLib.dll out
COPY /B G4YokoActTK\G4YokoActTK\bin\Release\DxLib_x64.dll out
COPY /B G4YokoActTK\G4YokoActTK\bin\Release\DxLibDotNet.dll out

C:\Factory\Tools\xcp.exe doc out
C:\Factory\Tools\xcp.exe C:\Dev\Fairy\Donut3\doc out
COPY /B AUTHORS out

C:\Factory\SubTools\zip.exe /PE- /RVE- /G out G4YokoActTK
C:\Factory\Tools\summd5.exe /M out

IF NOT "%1" == "/-P" PAUSE
