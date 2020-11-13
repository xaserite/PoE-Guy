#include src\item.ahk
#include src\affix.ahk

parseItem()
{
	Send, ^C
	; read the item string from clipboard
	
	; extract all affixes 
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