#NoEnv
#Persistent
#MaxThreadsPerHotkey 2
#KeyHistory 0
ListLines Off
SetBatchLines, -1
SetKeyDelay, -1, -1
SetMouseDelay, -1
SetDefaultMouseSpeed, 0
SetWinDelay, -1
SetControlDelay, -1
SendMode Input
CoordMode, Pixel, Screen

; DETROIT_HOTKEYS
key_hold         := "LAlt"
key_hold2nd      := "LCtrl"
key_hold3rd      := "Space"
key_hold4th      := "XButton2"
key_GOTG         := "F3"
key_whendaal     := "F4"
key_khatam       := "End"
key_restart      := "Home"

; MARKUS_AI_SETTINGS
konsa_box            := 2 ;
konsa_sens           := 58 ; Regular=58 Default=60 Adjust as per your preference
konsa_color          := 0xFFFF00 ; Yellow=0xFFFF00 green=0x1e9750 vibrantpurple=0xFA64FA
minDelay              := 2
maxDelay              := 9
sleepDelay            := 120

; OVERLAY_WIDTH
goleftDetroit   := A_ScreenWidth // 2 - konsa_box
gorightDetroit  := A_ScreenWidth // 2 + konsa_box
gotopDetroit    := A_ScreenHeight // 3 - konsa_box
gobottomDetroit := A_ScreenHeight // 2 + konsa_box

; DEFINE WWE
TripleH     := FoundX
JohnCena    := FoundY
GOTG        := true

; Alice_Hotkeys
Hotkey, %key_khatam%, GG
Hotkey, %key_GOTG%, GOTGset
Hotkey, %key_whendaal%, vendaal
Hotkey, %key_restart%, RestartAsAdmin

; FUNCTIONS

; chaliyee shuru karte hain!
shuru:
       SoundBeep 200, 200
       SoundBeep 300, 200
       SetTimer, Initialize, 50
       return

; fact: Androids are correct at some point...
initialize:
            While GetKeyState(key_hold, "P") or GetKeyState(key_hold2nd, "P") or GetKeyState(key_hold3rd, "P") or GetKeyState(key_hold4th, "P") {
            if (GOTG) {
            PixelSearch()
            } else {
            PixelSearchelfir()
            }
            }       
            return

; Guardians of the Galaxy
GOTGset:
         SoundBeep 300, 200
         GOTG := true
         return

; Bollywood Movie?
vendaal:
         SoundBeep 300, 200
         GOTG := false
         return

; Good Game! Take some rest before you can do this again :)
GG:
    SoundBeep, 400, 200
    SoundBeep, 300, 200
    SoundBeep, 200, 200
    Sleep 400
    ExitApp
    return

; Restart as Admin
RestartAsAdmin:
    SoundBeep, 500, 200
    SoundBeep, 600, 200
    if not A_IsAdmin
    {
        try
        {
            Run *RunAs "%A_ScriptFullPath%"
            ExitApp
        }
        catch
        {
            MsgBox, Failed to restart as admin
        }
    }
    else
    {
        Reload
    }
    return

; ENGINE 1
PixelSearch() {
               global
               clickCount := 0
               PixelSearch, TripleH, JohnCena, goleftDetroit, gotopDetroit, gorightDetroit, gobottomDetroit, konsa_color, konsa_sens, Fast RGB ; Fast RGB For Razer Users ( Syncs game colors with RGB )
               If !(ErrorLevel) {
               If !GetKeyState("LButton") {
               While (clickCount < 1000) {
                   Random, uWu, minDelay, maxDelay
                   Sleep %uWu%
                   Click
                   Sleep %sleepDelay%
                   clickCount++
                   PixelSearch, TripleH, JohnCena, goleftDetroit, gotopDetroit, gorightDetroit, gobottomDetroit, konsa_color, konsa_sens, Fast RGB
                   If (ErrorLevel) {
                       break
                   }
               }
          }
    }
    return
}


; ENGINE 2
PixelSearchelfir() {
                    global
                    PixelSearch, TripleH, JohnCena, goleftDetroit, gotopDetroit, gorightDetroit, gobottomDetroit, konsa_color, konsa_sens, Fast RGB ; Fast RGB For Razer Users ( Syncs game colors with RGB )
                    If !(ErrorLevel) {
                    If !GetKeyState("LButton") {
                    Random, uWu, minDelay, maxDelay
                    Sleep %uWu%
                    Click D
                    Sleep 50
                    Click U
          }
    }
    return
}