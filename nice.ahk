#SingleInstance ignore
#Esc::Reload  ; Reload/stop script. Hotkey = Win+Esc
 
#CommentFlag //  ; Typetext... hotkey = ctrl+L
^l::
SendInput, ENTER_TEXT_HERE
return

#CommentFlag //  ; Typetext... hotkey = ctrl+shift+C
^+c::
SendInput, ENTER_TEXT_HERE
Send, {Enter 1}
SendInput, ENTER_MORE_TEXT_HERE
return

#CommentFlag //  ; Auto scrolls using the up key. Used for browsing logs... Toggle key = ctrl+up arrow. 
#CommentFlag //  ; ^Up::
RepeatKey := !RepeatKey
If RepeatKey
	SetTimer, SendTheKey, 200
Else
	SetTimer, SendTheKey, Off
Return
SendTheKey:
SendInput {Up}
Return

#CommentFlag //  ; Script to go to C:\ProgramData\Nuance  ...hotkey = ctrl+e 
^e::
Run, %ProgramData%\Nuance
return

#CommentFlag //  ; Media Control Shortcuts
f2::Media_Play_Pause
f9::Media_Prev
f10::Media_Next 
