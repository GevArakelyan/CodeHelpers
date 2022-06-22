<!-- To run with realtime priority -->
https://docs.microsoft.com/en-us/powershell/scripting/runspriority
<!-- You should run cmd as admin before executing below command -->
cmd /c start "devenv" /realtime "C:\Program Files\Microsoft Visual Studio\2022\Preview\Common7\IDE\devenv.exe"


# To search for a file in a directory
dir /s /b "*.txt"
dir filename /s 


### powershell query then filter then select example.

get-service | Where-Object Status -eq 'Stopped' | Select-Object Name,Status
$data = get-service | Where-Object Status -eq 'Stopped' | Select-Object Name,Status
$data | out-file Results.csv
get-content Results.csv | more