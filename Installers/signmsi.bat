"C:\Progaram Files (x86)\Windows Kits\10\bin\10.0.18362.0\x86\SignTool.exe" sign v/ /f Signature.pfx /t http://timestamp.verisign.com/scripts/timestamp.dll SetupAppInstaller.msi
move SetupAppInstaller.msi AppInstaller.msi
"C:\Progaram Files (x86)\Windows Kits\10\bin\10.0.18362.0\x86\SignTool.exe" verify AppInstaller.msi
pause