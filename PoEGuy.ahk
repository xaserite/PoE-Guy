#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#include src\crafter.ahk

;; Key Mappings
^Esc:: ExitApp
^F10:: Reload
F10:: HelloWorld()

;; Main Routine
HelloWorld()
{
	for window in ComObjCreate("Shell.Application").Windows
		windows .= window.LocationName " :: " window.LocationURL "`n"
		MsgBox % windows
}