#SingleInstance force
#IfWinActive, 7 Days To Die
#MaxThreadsPerHotkey 2
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


Gui, Show , w550 h520, erik's 7days scripts v02



Gui, Add, Text, x20 y13 Left, spam left click hotkey
Gui, Add, Hotkey, x140 y10 vHKspamleft

Gui, Add, Text, x20 y53 Left,hold left click hotkey
Gui, Add, Hotkey, x140 y50 vHKholdleft

Gui, Add, Text, x280 y13 Left, spam right click hotkey
Gui, Add, Hotkey, x400 y10 vHKspamright

Gui, Add, Text, x280 y53 Left,hold right click hotkey
Gui, Add, Hotkey, x400 y50 vHKholdright

Gui, Add, Text, x280 y93 Left,accept quest hotkey
Gui, Add, Hotkey, x400 y90 vHKaccpetquest

Gui, Add, Text, x20 y93 Left, message1 text
Gui, Add, Edit, x140 y90 vTEXTmsg1
Gui, Add, Text, x20 y118 Left, message1 hotkey
Gui, Add, Hotkey, x140 y115 vHKmsg1

Gui, Add, Text, x20 y158 Left, message2 text
Gui, Add, Edit, x140 y155 vTEXTmsg2
Gui, Add, Text, x20 y183 Left,message2 hotkey
Gui, Add, Hotkey, x140 y180 vHKmsg2

Gui, Add, Text, x20 y223 Left, message3 text ; 43 greater
Gui, Add, Edit, x140 y220 vTEXTmsg3 ; 3 less
Gui, Add, Text, x20 y248 Left, message3 hotkey ; 28 greater
Gui, Add, Hotkey, x140 y245 vHKmsg3 ; 3 less

Gui, Add, Text, x20 y288 Left, message4 text ; 43 greater
Gui, Add, Edit, x140 y285 vTEXTmsg4 ; 3 less
Gui, Add, Text, x20 y313 Left, message4 hotkey ; 28 greater
Gui, Add, Hotkey, x140 y310 vHKmsg4 ; 3 less

Gui, Add, Text, x20 y353 Left, message5 text ; 43 greater
Gui, Add, Edit, x140 y350 vTEXTmsg5 ; 3 less
Gui, Add, Text, x20 y378 Left, message5 hotkey ; 28 greater
Gui, Add, Hotkey, x140 y375 vHKmsg5 ; 3 less

Gui, Add, Text, x20 y418 Left, message6 text ; 43 greater
Gui, Add, Edit, x140 y415 vTEXTmsg6 ; 3 less
Gui, Add, Text, x20 y443 Left, message6 hotkey ; 28 greater
Gui, Add, Hotkey, x140 y440 vHKmsg6 ; 3 less

Gui, Add, Text, x280 y223 Left, message7 text ; 43 greater
Gui, Add, Edit, x400 y220 vTEXTmsg7 ; 3 less
Gui, Add, Text, x280 y248 Left, message7 hotkey ; 28 greater
Gui, Add, Hotkey, x400 y245 vHKmsg7 ; 3 less

Gui, Add, Text, x280 y288 Left, message8 text ; 43 greater
Gui, Add, Edit, x400 y285 vTEXTmsg8 ; 3 less
Gui, Add, Text, x280 y313 Left, message8 hotkey ; 28 greater
Gui, Add, Hotkey, x400 y310 vHKmsg8 ; 3 less

Gui, Add, Text, x280 y353 Left, message9 text ; 43 greater
Gui, Add, Edit, x400 y350 vTEXTmsg9 ; 3 less
Gui, Add, Text, x280 y378 Left, message9 hotkey ; 28 greater
Gui, Add, Hotkey, x400 y375 vHKmsg9 ; 3 less

Gui, Add, Text, x280 y418 Left, message0 text ; 43 greater
Gui, Add, Edit, x400 y415 vTEXTmsg0 ; 3 less
Gui, Add, Text, x280 y443 Left, message0 hotkey ; 28 greater
Gui, Add, Hotkey, x400 y440 vHKmsg0 ; 3 less


Gui, Add, Button, x110 y480 w80 h20 vBindButton gBind, bind keys
Gui, Add, Button, x370 y480 w80 h20 vClearButton gClear, clear keys

Toggle := 0
Gui, Submit, NoHide
loadKeys()
return

; --start methods--------------------

rollShort()
{
	random, delayShort, 30, 50
	sleep, %delayShort%
}

rollEnter()
{
	random, delayLong, 100, 150
	sleep, %delayLong%
	send, {Enter}
}

loadKeys()
{
	global
	IniRead, HKspamleft, erik7days.ini, HotKeys, HKspamleft, ""
	IniRead, HKholdleft, erik7days.ini, HotKeys, HKholdleft, ""
	IniRead, HKspamright, erik7days.ini, HotKeys, HKspamright, ""
	IniRead, HKholdright, erik7days.ini, HotKeys, HKholdright, ""
	IniRead, HKaccpetquest, erik7days.ini, HotKeys, HKaccpetquest, ""
	IniRead, HKmsg1, erik7days.ini, HotKeys, HKmsg1, ""
	IniRead, HKmsg2, erik7days.ini, HotKeys, HKmsg2, ""
	IniRead, HKmsg3, erik7days.ini, HotKeys, HKmsg3, ""
	IniRead, HKmsg4, erik7days.ini, HotKeys, HKmsg4, ""
	IniRead, HKmsg5, erik7days.ini, HotKeys, HKmsg5, ""
	IniRead, HKmsg6, erik7days.ini, HotKeys, HKmsg6, ""
	IniRead, HKmsg7, erik7days.ini, HotKeys, HKmsg7, ""
	IniRead, HKmsg8, erik7days.ini, HotKeys, HKmsg8, ""
	IniRead, HKmsg9, erik7days.ini, HotKeys, HKmsg9, ""
	IniRead, HKmsg0, erik7days.ini, HotKeys, HKmsg0, ""
	
	IniRead, TEXTmsg1, erik7days.ini, Strings, TEXTmsg1, %a_space% 
	IniRead, TEXTmsg2, erik7days.ini, Strings, TEXTmsg2, %a_space% 
	IniRead, TEXTmsg3, erik7days.ini, Strings, TEXTmsg3, %a_space% 
	IniRead, TEXTmsg4, erik7days.ini, Strings, TEXTmsg4, %a_space% 
	IniRead, TEXTmsg5, erik7days.ini, Strings, TEXTmsg5, %a_space% 
	IniRead, TEXTmsg6, erik7days.ini, Strings, TEXTmsg6, %a_space% 
	IniRead, TEXTmsg7, erik7days.ini, Strings, TEXTmsg7, %a_space% 
	IniRead, TEXTmsg8, erik7days.ini, Strings, TEXTmsg8, %a_space% 
	IniRead, TEXTmsg9, erik7days.ini, Strings, TEXTmsg9, %a_space% 
	IniRead, TEXTmsg0, erik7days.ini, Strings, TEXTmsg0, %a_space% 
	
	GuiControl,, HKspamleft, % HKspamleft
	GuiControl,, HKholdleft, % HKholdleft
	GuiControl,, HKspamright, % HKspamright
	GuiControl,, HKholdright, % HKholdright
	GuiControl,, HKaccpetquest, % HKaccpetquest
	GuiControl,, HKmsg1, % HKmsg1
	GuiControl,, HKmsg2, % HKmsg2
	GuiControl,, HKmsg3, % HKmsg3
	GuiControl,, HKmsg4, % HKmsg4
	GuiControl,, HKmsg5, % HKmsg5
	GuiControl,, HKmsg6, % HKmsg6
	GuiControl,, HKmsg7, % HKmsg7
	GuiControl,, HKmsg8, % HKmsg8
	GuiControl,, HKmsg9, % HKmsg9
	GuiControl,, HKmsg0, % HKmsg0
	
	GuiControl,, TEXTmsg1, % TEXTmsg1
	GuiControl,, TEXTmsg2, % TEXTmsg2
	GuiControl,, TEXTmsg3, % TEXTmsg3
	GuiControl,, TEXTmsg4, % TEXTmsg4
	GuiControl,, TEXTmsg5, % TEXTmsg5
	GuiControl,, TEXTmsg6, % TEXTmsg6
	GuiControl,, TEXTmsg7, % TEXTmsg7
	GuiControl,, TEXTmsg8, % TEXTmsg8
	GuiControl,, TEXTmsg9, % TEXTmsg9
	GuiControl,, TEXTmsg0, % TEXTmsg0

	
	applyKeys()
}

saveKeys()
{
	global
	IniWrite, %HKspamleft%, erik7days.ini, HotKeys, HKspamleft
	IniWrite, %HKholdleft%, erik7days.ini, HotKeys, HKholdleft
	IniWrite, %HKspamright%, erik7days.ini, HotKeys, HKspamright
	IniWrite, %HKholdright%, erik7days.ini, HotKeys, HKholdright
	IniWrite, %HKaccpetquest%, erik7days.ini, HotKeys, HKaccpetquest
	IniWrite, %HKmsg1%, erik7days.ini, HotKeys, HKmsg1
	IniWrite, %HKmsg2%, erik7days.ini, HotKeys, HKmsg2
	IniWrite, %HKmsg3%, erik7days.ini, HotKeys, HKmsg3
	IniWrite, %HKmsg4%, erik7days.ini, HotKeys, HKmsg4
	IniWrite, %HKmsg5%, erik7days.ini, HotKeys, HKmsg5
	IniWrite, %HKmsg6%, erik7days.ini, HotKeys, HKmsg6
	IniWrite, %HKmsg7%, erik7days.ini, HotKeys, HKmsg7
	IniWrite, %HKmsg8%, erik7days.ini, HotKeys, HKmsg8
	IniWrite, %HKmsg9%, erik7days.ini, HotKeys, HKmsg9
	IniWrite, %HKmsg0%, erik7days.ini, HotKeys, HKmsg0
	
	IniWrite, %TEXTmsg1%, erik7days.ini, Strings, TEXTmsg1
	IniWrite, %TEXTmsg2%, erik7days.ini, Strings, TEXTmsg2
	IniWrite, %TEXTmsg3%, erik7days.ini, Strings, TEXTmsg3
	IniWrite, %TEXTmsg4%, erik7days.ini, Strings, TEXTmsg4
	IniWrite, %TEXTmsg5%, erik7days.ini, Strings, TEXTmsg5
	IniWrite, %TEXTmsg6%, erik7days.ini, Strings, TEXTmsg6
	IniWrite, %TEXTmsg7%, erik7days.ini, Strings, TEXTmsg7
	IniWrite, %TEXTmsg8%, erik7days.ini, Strings, TEXTmsg8
	IniWrite, %TEXTmsg9%, erik7days.ini, Strings, TEXTmsg9
	IniWrite, %TEXTmsg0%, erik7days.ini, Strings, TEXTmsg0
}

applyKeys()
{
	global
	Gui, Submit, NoHide
	
	if (HKspamleft != ""){
		HotKey,%HKspamleft%,spamLeftClick
	}
	if (HKholdleft != ""){
		HotKey,%HKholdleft%,holdLeftClick
	}
	if (HKspamright != ""){
		HotKey,%HKspamright%,spamRightClick
	}
	if (HKholdright != ""){
		HotKey,%HKholdright%,holdRightClick
	}
	if (HKaccpetquest != ""){
		HotKey,%HKaccpetquest%,acceptQuest
	}
	
	if (HKmsg1 != ""){
		HotKey,%HKmsg1%,msg1
	}
	if (HKmsg2 != ""){
		HotKey,%HKmsg2%,msg2
	}
	if (HKmsg3 != ""){
		HotKey,%HKmsg3%,msg3
	}
	if (HKmsg4 != ""){
		HotKey,%HKmsg4%,msg4
	}
	if (HKmsg5 != ""){
		HotKey,%HKmsg5%,msg5
	}
	if (HKmsg6 != ""){
		HotKey,%HKmsg6%,msg6
	}
	if (HKmsg7 != ""){
		HotKey,%HKmsg7%,msg7
	}
	if (HKmsg8 != ""){
		HotKey,%HKmsg8%,msg8
	}
	if (HKmsg9 != ""){
		HotKey,%HKmsg9%,msg9
	}
	if (HKmsg0 != ""){
		HotKey,%HKmsg0%,msg0
	}
	
	saveKeys()
}

Bind:
{
applyKeys()
}
return

Clear()
{
	FileDelete, erik7days.ini
	Reload
}
return

spamLeftClick:
Toggle := !Toggle 
While Toggle {


	Send {Click Down}
	rollShort()
	Send {Click Up}
	rollShort()
	If !Toggle
       break
 }
return

holdLeftClick:
Toggle := !Toggle
If (Toggle){
   Click, Down
} else {
   Click, Up
}
return


spamRightClick:
Toggle := !Toggle 
While Toggle {
	Send {Click Down Right}
	rollShort()
	Send {Click Up Right}
	rollShort()
	If !Toggle
       break
 }
return

holdRightClick:
Toggle := !Toggle
If (Toggle){
   Click, Down
} else {
   Click, Up
}
return


acceptQuest:
{
	Toggle := !Toggle 
	MouseGetPos, posX, posY
	While Toggle {
		random, ranX, -5, 5
		random, ranY, -5, 5
		random, acceptX, 650, 960
		random, acceptY, 790, 810

		Send {Click Down}
		rollShort()
		Send {Click Up}
		rollShort()
		Send, a
		rollShort()

		MouseMove, acceptX, acceptY, 10
		Send {Click Down}
		rollShort()
		Send {Click Up}
		rollShort()
		Send {Tab}
		rollShort()

		MouseMove, (posX + ranX), (posY + ranY), 10
	}
}



msg1:
length := StrLen(TEXTmsg1)
send, t
Loop, %length% {
	char := SubStr(TEXTmsg1, A_Index, 1)
	rollShort()
	send, %char%
}
rollEnter()
return

msg2:
length := StrLen(TEXTmsg2)
send, t
Loop, %length% {
	char := SubStr(TEXTmsg2, A_Index, 1)
	rollShort()
	send, %char%
}
rollEnter()
return

msg3:
length := StrLen(TEXTmsg3)
send, t
Loop, %length% {
	char := SubStr(TEXTmsg3, A_Index, 1)
	rollShort()
	send, %char%
}
rollEnter()
return

msg4:
length := StrLen(TEXTmsg4)
send, t
Loop, %length% {
	char := SubStr(TEXTmsg4, A_Index, 1)
	rollShort()
	send, %char%
}
rollEnter()
return

msg5:
length := StrLen(TEXTmsg5)
send, t
Loop, %length% {
	char := SubStr(TEXTmsg5, A_Index, 1)
	rollShort()
	send, %char%
}
rollEnter()
return

msg6:
length := StrLen(TEXTmsg6)
send, t
Loop, %length% {
	char := SubStr(TEXTmsg6, A_Index, 1)
	rollShort()
	send, %char%
}
rollEnter()
return

msg7:
length := StrLen(TEXTmsg7)
send, t
Loop, %length% {
	char := SubStr(TEXTmsg7, A_Index, 1)
	rollShort()
	send, %char%
}
rollEnter()
return

msg8:
length := StrLen(TEXTmsg8)
send, t
Loop, %length% {
	char := SubStr(TEXTmsg8, A_Index, 1)
	rollShort()
	send, %char%
}
rollEnter()
return

msg9:
length := StrLen(TEXTmsg9)
send, t
Loop, %length% {
	char := SubStr(TEXTmsg9, A_Index, 1)
	rollShort()
	send, %char%
}
rollEnter()
return

msg0:
length := StrLen(TEXTmsg0)
send, t
Loop, %length% {
	char := SubStr(TEXTmsg0, A_Index, 1)
	rollShort()
	send, %char%
}
rollEnter()
return

GuiClose:
ExitApp