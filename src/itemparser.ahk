#include src\item.ahk
#include src\affix.ahk

parseItem()
{
	; read the item string from clipboard
	Send, ^c
	sleep, 1
	; extract all affixes
	item = new Item
	Loop, parse, clipboard, `n, `r 
	{
		MsgBox, %A_LoopField%
	}
	return item
}

readTargetItem(filename)
{
	target := new Item
	Loop, read, filename
	{
		
	}
	return target
}

isItemUnderCursorValid()
{
	
}