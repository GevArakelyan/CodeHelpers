# to find and modify history file to get more usefull command completion
(Get-PSReadlineOption).HistorySavePath

# find process with name
Get-Process pwsh


# find file
Get-ChildItem -Path C:\ -Include *.doc,*.docx -File -Recurse -ErrorAction SilentlyContinue | Where-Object { $_.LastWriteTime -ge $FindDate }

# don't use Write-Output and return together if your function returns value
# example:
function Get-PlusResult
{
    [CmdletBinding()]
    param(
        [int]$a = 0,
        [int]$b = 0
    )
    $result = $a + $b
    Write-Output $result
    #or return $result
}

# Below function will speak Argument string
function Invoke-UdfSpeach
{
    [CmdletBinding()]
    param(
        [string]$speakit = 'A default value'
    )
    Write-Verbose $speakit # will print only when -Verbose is on
    Write-Debug $speakit  # will print only when -Debug is on
    Write-Output $speakit #will always write output
    Write-Information 'Thank you for using this app' -InformationAction Continue
    $speaker = New-Object -ComObject SAPI.SpVoice
    $speaker.Speak($speakit,1) | Out-Null
}

Invoke-UdfSpeach "Barev Gevorg jan"