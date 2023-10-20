GeneralMedium() {
    StartGame()
    Place("Dart")
    Place("Druid A")
    Upgrade("Dart", 0, 0, 1)        ; 000 -> 001

    WaitForRound(5)
 
    Upgrade("Dart", 0, 1, 1)        ; 001 -> 012

    WaitForRound(7)
    Upgrade("Druid A", 1, 1, 0)     ; 000 -> 110
    
    WaitForRound(14)
    Upgrade("Druid A", 0, 2, 0)     ; 110 -> 130
    Targeting("Druid A",1)          ; Strong -> First

    WaitForRound(17)
    Upgrade("Dart", 0, 1, 1)        ; 012 -> 023
    
    WaitForRound(24)
    Place("Village")
    
    WaitForRound(28)
    Upgrade("Village",0,2,0)        ;000 ->020
    WaitForRound(33)
    Upgrade("Village",2,0,0)        ;020 ->220
    
    WaitForRound(38)
    Place("Sniper")
    Targeting("Sniper", 3)          ; First -> Strong
    Upgrade("Sniper", 2, 2, 0)      ; 000 -> 220
    
    WaitForRound(39)
    Upgrade("Sniper", 1, 0, 0)      ; 220 -> 320
    
    WaitForRound(43)
    Upgrade("Druid A", 0, 1, 0)     ; 130 -> 140
    
    WaitForRound(47)
    Upgrade("Sniper", 1, 0, 0)      ; 320 -> 420

    }
