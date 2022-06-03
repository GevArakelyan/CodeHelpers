<!-- To run with realtime priority -->
https://docs.microsoft.com/en-us/powershell/scripting/runspriority
<!-- You should run cmd as admin before executing below command -->
cmd /c start "devenv" /realtime "C:\Program Files\Microsoft Visual Studio\2022\Preview\Common7\IDE\devenv.exe"


# To search for a file in a directory
dir /s /b "*.txt"
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
