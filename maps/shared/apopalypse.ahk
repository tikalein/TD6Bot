GeneralApopalypse() {
    StartGame()
    Place("Sauda")

    WaitForRound(8)
    Place("Sniper A")
    Targeting("Sniper A", 3)          ; First -> Strong

    WaitForRound(10)
    Upgrade("Sniper A", 1, 0, 0)     ; 000 -> 100

    WaitForRound(13)
    Upgrade("Sniper A", 0, 2, 0,true)     ; 100 -> 120

    WaitForRound(16)
    Place("Druid A")
    Upgrade("Druid A", 0, 1, 0)     ; 000 -> 010
    
    WaitForRound(17)
    Upgrade("Druid A", 1, 0, 0)     ; 010 -> 110

    WaitForRound(21)
    Upgrade("Druid A", 0, 2, 0,true)     ; 010 -> 130
    Targeting("Druid A", 1)          ; Strong -> First

    WaitForRound(24)
    Place("Village")

    WaitForRound(27)
    Upgrade("Village", 0, 2, 0, true) ; 000 -> 020

    WaitForRound(30)
    Upgrade("Village", 2, 0, 0, true) ; 020 -> 220

    WaitForRound(31)
    Place("Alch")
    Targeting("Alch",3)             ; First->Strong
    Upgrade("Alch",3,2,0,true)           ; 000 -> 320

    WaitForRound(35)
    Upgrade("Sniper A",1,0,0,true)           ; 120 -> 220
    
    WaitForRound(39)
    Upgrade("Druid A",0,1,0,true)           ; 130 -> 140

    WaitForRound(42)
    Upgrade("Sniper A",1,0,0,true)           ; 220 -> 320

    WaitForRound(45)
    Upgrade("Sniper A",1,0,0,true)           ; 320 -> 420

    WaitForRound(49)
    Upgrade("Alch",1,0,0,true)           ; 320 -> 420
    }
