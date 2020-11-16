#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

ClipboardArray := []

F1::
Input Key, L1
if(Key = "T"){
    Winset, Alwaysontop, , A ; Pin to top
}
else if(Key = "C"){ ; Clipboard copy
    Send, {ctrl down}
    Sleep, 40
    Send, {c down}
    Sleep, 40
    Send, {c up}
    Sleep, 40
    Send, {ctrl up}

    Input Key2, L1
    if(Key2 = 1){
        ClipboardArray[1] := clipboard
    }
    else if(Key2 = 2){
        ClipboardArray[2] := clipboard
    }
    else if(Key2 = 3){
        ClipboardArray[3] := clipboard
    }
    else if(Key2 = 4){
        ClipboardArray[4] := clipboard
    }
    else if(Key2 = 5){
        ClipboardArray[5] := clipboard
    }
    else if(Key2 = 6){
        ClipboardArray[6] := clipboard
    }
}
else if(Key = "P"){ ; Clipboard paste
    Input Key2, L1
    if(Key2 = 1){
        Send, % ClipBoardArray[1]
    }
    else if(Key2 = 2){
        Send % ClipboardArray[2]
    }
    else if(Key2 = 3){
        Send % ClipboardArray[3]
    }
    else if(Key2 = 4){
        Send % ClipboardArray[4]
    }
    else if(Key2 = 5){
        Send % ClipboardArray[5]
    }
    else if(Key2 = 6){
        Send % ClipboardArray[6]
    }
}
else if(Key = "W"){ ;Word shortcuts
    Input Key2, L1
    if(Key2 = "S"){ ;Subscript equations
        Send, {Alt}
        Sleep, 40
        Send, {J}
        Send, {E}
        Sleep, 40
        Send, {S}
    }
    else if(Key2 = "I"){ ;Insert cross reference
        Send, {Alt}
        Sleep, 40
        Send, {S}
        Sleep, 40
        Send, {R}
        Send, {F}
    }
}
else if(Key = 5){
}
Return
