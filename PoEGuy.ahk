#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#include src\crafter.ahk

;; Key Mappings
^Esc:: ExitApp
^F10:: Reload
F10:: HelloWorld()

;; Settings
; relative stash tab coordinates, floats between 0 and 1
AlterationPosX := 0
AlterationPosY := 0
ChaosPosX := 0
ChaosPosY := 0
AugmentationPosX := 0
AugmentationPosY := 0
ScouringPosX := 0
ScouringPosY := 0
ChancePosX := 0
ChancePosY := 0
AlchemyPosX := 0
AlchemyPosY := 0
RegalPosX := 0
RegalPosY := 0
TransmutationPosX := 0
TransmutationPosY := 0

;; Main Routine
HelloWorld()
{
	parseItem()
}