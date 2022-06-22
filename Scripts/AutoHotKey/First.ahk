#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance,Force; ensure only one version of this script is running at a time.

; ** Common Modifier Keys **
; # = Windows
; ^ = Control
; ! = Alt
; + = Shift


^e::
Run, Excell
return

#IfWinActive, code-insiders.exe
^b::
Send, `;********code********
return
#IfWinActive

AppsKey & d::run, Notepad.exe

#j::
MsgBox, Wow! You're Amazing!
return

#X::
FormatTime, xx,, yyyyMMdd
SendInput, %xx%
return

::nguid::
shellobj := ComObjCreate("Scriptlet.TypeLib")
shellexec := shellobj.GUID
clipboard := shellexec
SendInput, ^v
return



;~ #S::Suspend ; Assign the toggle-suspend function to a hotkey.
^!s::DllCall("PowrProf\SetSuspendState", "int", 0, "int", 0, "int", 0) ; Suspend
^!h::DllCall("PowrProf\SetSuspendState", "int", 1, "int", 0, "int", 0) ; hibernate


:o:egev.::Gevorg_Arakelyan@epam.com ; o prevents space in the email address.
:o:ggev.::araqelyangevorg@gmail.com
:o:gwww.::Goodby World{!} ; {!} needed for !
:r:gwww.::Goodby World! ; {!} needed for !
