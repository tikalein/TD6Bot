GeneralMilitary() {
    StartGame()
    Place("Sauda")

    WaitForRound(4)
    Place("Sniper A")
    Targeting("Sniper A", 3)          ; First -> Strong

    WaitForRound(6)
    Upgrade("Sniper A", 1, 0, 0)     ; 000 -> 100

    WaitForRound(10)
    Upgrade("Sniper A", 0, 2, 0)     ; 100 -> 120

    WaitForRound(12)
    Place("Sniper B")
    
    WaitForRound(13)
    Upgrade("Sniper B", 0, 0, 1)     ; 000 -> 001

    WaitForRound(15)
    Upgrade("Sniper B", 0, 0, 1)     ; 001 -> 002

    WaitForRound(18)
    Upgrade("Sniper B", 0, 2, 0)     ; 002 -> 022

    WaitForRound(24)
    Upgrade("Sniper A", 1, 0, 0)     ; 120 -> 220

    WaitForRound(32)
    Upgrade("Sniper B", 0, 0, 1)     ; 022 -> 023

    WaitForRound(38)
    Upgrade("Sniper B", 0, 0, 1)     ; 023 -> 024

    WaitForRound(40)
    Upgrade("Sniper A", 1, 0, 0)     ; 220 -> 320

    WaitForRound(44)
    Upgrade("Sniper A", 1, 0, 0)     ; 320 -> 420

    WaitForRound(51)
    Upgrade("Sniper B", 0, 0, 1)     ; 024 -> 025

    WaitForRound(59)
    Place("Sniper C")
    Upgrade("Sniper C", 2, 4, 1)     ; 000 -> 240


    }
