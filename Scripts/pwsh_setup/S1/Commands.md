## Examples on Powershell:
```
dir env:  | to see all environment variables
dir env:SSLKEYLOGFILE | to see SSLKEYLOGFILE
$env:SSLKEYLOGFILE = "~/Desktop/sslkeylogfile.log" | to set SSLKEYLOGFILE
$env:Path += ";C:\Program Files\Git\cmd" | to modify PATH
```

## Setting Environment Variables in Powershell persistently
### To set persistently powershell uses [System.Environment] class with the SetEvironmentVariable method.
[System.Environment]::SetEnvironmentVariable("SSLKEYLOGFILE", "~/sslkeylogfile.log", [System.EnvironmentVariableTarget]::Machine)

## Examples on CMD: Set/Unset/Change an Environment Variable for the "Current" CMD Session
```
set varname       | Display the value of the variable
set varname=value | Set or change the value of the variable (Note: no space before or after =)
set varname=      |Delete the variable by setting to empty string (Note: nothing after '=')
set               | Display all variables

```
### CMD: Using an Environment Variable
```
// Display the PATH environment variable
echo %PATH%
PATH=xxxxxxx
   
// Append a directory in front of the existing PATH
set PATH=c:\myBin;%PATH%
PATH=c:\myBin;[existing entries]
```

## Examples on linux:
```

export VARNAME=value | Set or change the value of the variable
echo $VARNAME | Display the value of the variable
env | To see all env variables
env | grep SSLKEYLOGFILE | To see all env variables with SSLKEYLOGFILE
env | grep SSLKEYLOGFILE | cut -d '=' -f 2 | To see the value of SSLKEYLOGFILE
To delete the environment variable:
unset SSLKEYLOGFILE

```