#SingleInstance force
#IfWinActive, 7 Days To Die
#MaxThreadsPerHotkey 2

delay1 :=
delay2 :=
delay3 :=
delay4 :=
delay5 :=
delay6 :=
delay7 :=
delay8 :=
delay9 :=
delay10 :=
delay11 :=
delay12 :=


roll()
{
	global
	random, delay1, 100, 150
	random, delay2, 10, 30
	random, delay3, 10, 30
	random, delay4, 10, 30
	random, delay5, 10, 30
	random, delay6, 10, 30
	random, delay7, 10, 30
	random, delay8, 10, 30
	random, delay9, 10, 30
	random, delay10, 10, 30
	random, delay11, 10, 30
	random, delay12, 10, 30
}

NumpadSub:: 
Toggle := !Toggle 
While Toggle {
	roll()
	Send {Click Down}
	sleep, %delay2%
	Send {Click Up}
	sleep, %delay3%
	If !Toggle
       break
 }
return

Numpad0:: 
{	
	roll()
	send, t

	sleep, %delay1%
	send, /

	sleep, %delay2%
	send, b

	sleep, %delay3%
	send, a

	sleep, %delay4%
	send, s
	
	sleep, %delay5%
	send, e
	
	sleep, %delay6%
	send, {Enter}
}
return

Numpad1:: 
{
	roll()
	send, t

	sleep, %delay1%
	send, /

	sleep, %delay2%
	send, w

	sleep, %delay3%
	send, p

	sleep, %delay4%
	send, {Space}
	
	sleep, %delay5%
	send, 1
	
	sleep, %delay6%
	send, {Enter}
}
return

Numpad2:: 
{	
	roll()
	send, t

	sleep, %delay1%
	send, /

	sleep, %delay2%
	send, w

	sleep, %delay3%
	send, p

	sleep, %delay4%
	send, {Space}
	
	sleep, %delay5%
	send, 2
	
	sleep, %delay6%
	send, {Enter}
}
return

Numpad3:: 
{
	roll()
	send, t

	sleep, %delay1%
	send, /

	sleep, %delay2%
	send, h

	sleep, %delay3%
	send, o

	sleep, %delay4%
	send, r
	
	sleep, %delay5%
	send, d
	
	sleep, %delay6%
	send, e
	
	sleep, %delay7%
	send, {Enter}
}
return

NumpadDot:: 
{
	roll()	
	send, t

	sleep, %delay1%
	send, /

	sleep, %delay2%
	send, r

	sleep, %delay3%
	send, e

	sleep, %delay4%
	send, t
	
	sleep, %delay5%
	send, u
	
	sleep, %delay6%
	send, r
	
	sleep, %delay7%
	send, n
	
	sleep, %delay8%
	send, {Enter}
}
return

NumpadAdd:: 
{
	roll()
	send, t

	sleep, %delay1%
	send, /

	sleep, %delay2%
	send, v

	sleep, %delay3%
	send, i

	sleep, %delay4%
	send, s
	
	sleep, %delay5%
	send, i
	
	sleep, %delay6%
	send, t
	
	sleep, %delay7%
	send, {Space}
	
	sleep, %delay8%
	send, P
	
	sleep, %delay9%
	send, u
	
	sleep, %delay10%
	send, p
	
	sleep, %delay11%
	send, {Enter}
}
return