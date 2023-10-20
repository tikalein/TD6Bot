DarkDungeonsEasy() {
    global TS := Map(
        "Dart A", ["dart", [335, 820]],
        "Dart B", ["dart", [795, 950]],
        "Dart C", ["dart", [1350, 1040]],
        "Druid A", ["druid", [235, 910]],     
        "Druid B", ["druid", [935, 950]],     
        "Sniper", ["sniper", [595, 270]],
        "Sub", ["sub", [1360, 830]],
    )



    Place("Dart A")
    Place("Dart B")
    Place("Sub")

    StartGame()
    
    WaitForRound(3)
    Upgrade("Dart A",0,1,0)
    Upgrade("Dart B",0,1,0)

    WaitForRound(5)
    Place("Druid A")
    
    WaitForRound(7)
    Place("Druid B")

    WaitForRound(8)
    Place("Dart C")
    Upgrade("Dart C",0,1,0)

    WaitForRound(10)
    Upgrade("Dart A",0,0,2)
        
    WaitForRound(11)
    Upgrade("Dart B",0,0,2)

    WaitForRound(12)
    Upgrade("Dart C",0,0,2)

    WaitForRound(13)
    Upgrade("Druid A",0,1,0)

    WaitForRound(14)
    Upgrade("Druid B",0,1,0)

    WaitForRound(16)
    Upgrade("Sub",0,0,1)

    WaitForRound(17)
    Upgrade("Dart A",0,0,1)

    WaitForRound(19)
    Upgrade("Dart B",0,0,1)

    WaitForRound(21)
    Upgrade("Dart C",0,0,1)

    WaitForRound(26)
    Upgrade("Druid A",1,2,0)

    WaitForRound(28)
    Upgrade("Druid B",1,0,0)
    Upgrade("Sub",0,2,0)

    WaitForRound(31)
    Upgrade("Druid B",1,0,0)

    WaitForRound(33)
    Upgrade("Sub",0,0,1)

    WaitForRound(36)
    Upgrade("Dart B",0,1,1)

    WaitForRound(39)
    Place("Sniper")
    Targeting("Sniper",3)
    Upgrade("Sniper",3,1,0)

}
