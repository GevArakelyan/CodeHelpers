<!-- To run with realtime priority -->
https://docs.microsoft.com/en-us/powershell/scripting/runspriority
<!-- You should run cmd as admin before executing below command -->
cmd /c start "devenv" /realtime "C:\Program Files\Microsoft Visual Studio\2022\Preview\Common7\IDE\devenv.exe"


# To search for a file in a directory
```
CMD:
dir /s /b "*.txt"
or
dir filename /s 
```

### powershell query then filter then select example.

get-service | Where-Object Status -eq 'Stopped' | Select-Object Name,Status
$data = get-service | Where-Object Status -eq 'Stopped' | Select-Object Name,Status
$data | out-file Results.csv
get-content Results.csv | more
=======
dir filename /s

# To search text in a file
findstr /c:"text" filename

# To search text in a file and replace it
grep -rl "text" . | xargs sed -i 's/text/newtext/g'

## Powershell
let's remove some string:
Example: let's remove any accurence of (: public std::unary_function< _SubscriberItem, bool >) pattern.
class A : public std::unary_function< _SubscriberItem, bool > {};

Get-ChildItem -Include ('*.h','*.cpp') -Recurse | ForEach { (Get-Content $_) | ForEach  {$_ -Replace ':(\s+)public(\s+)std::unary_function<(.*)>', ''} | Set-Content $_ }

