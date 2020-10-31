#SingleInstance force
#IfWinActive, 7 Days To Die
#MaxThreadsPerHotkey 2
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


Gui, Show , w300 h520, erik's 7days scripts

Gui, Add, Text, x20 y13 Left, spam left click hotkey
Gui, Add, Hotkey, x140 y10 vHKspam

Gui, Add, Text, x20 y53 Left,hold left click hotkey
Gui, Add, Hotkey, x140 y50 vHKhold

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


Gui, Add, Button, x110 y480 w80 h20 vMyButton gBind, bind keys

Toggle := 0

return

rollShort()
{
	random, delayShort, 10, 30
	sleep, %delayShort%
}

rollEnter()
{
	random, delayLong, 100, 150
	sleep, %delayLong%
	send, {Enter}
}

Bind:
{
	Gui, Submit, NoHide
	if (HKspam != ""){
		HotKey,%HKspam%,spamLeftClick
	}
	if (HKhold != ""){
		HotKey,%HKhold%,holdLeftClick
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

GuiClose:
ExitApp