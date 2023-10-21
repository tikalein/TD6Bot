DarkCastleChimps() {
global TS := Map(
        "Dart 1", ["dart", [730, 657]],
        "Sub 1", ["sub", [1083, 690]],
        "Dart 2", ["dart", [683, 700]],
        "Hero 1", ["hero", [1018-76*2, 446]],
        "Alch 1", ["alch",[1013,659]],
        "Druid 1", ["druid", [1018-76*3, 446]],
        "Druid 2", ["druid", [1018-76, 446]],
        "Druid 3", ["druid", [1018, 446]],
        "Druid 4", ["druid", [917-76*2, 446-66]],
        "Druid 5", ["druid", [917-76*1, 446-66]],
        "Druid 6", ["druid", [917, 446-66]],
        "Village 1", ["village", [888, 446-66-81]],
        "Alch 2", ["alch",[720,439]],
        "Alch 3", ["alch",[694,383]],
        "Spike 1", ["spike", [998, 446-70]],
          )

    Place("Dart 1")          
    Place("Sub 1")

    StartGame()          
    WaitForRound(7)
    Place("Dart 2")
    WaitForRound(10)         
    Place("Hero 1")          
    WaitForRound(11)              
    Upgrade("Sub 1",1,0,0)
    WaitForRound(13)              
    Upgrade("Sub 1",1,0,0)
    WaitForRound(15)              
    Upgrade("Sub 1",0,0,1)
    WaitForRound(19)              
    Upgrade("Sub 1",0,0,1)
    WaitForRound(21) 
    Upgrade("Dart 1",0,0,2)
    WaitForRound(25) 
    Upgrade("Sub 1",0,0,1)
    WaitForRound(27) 
    Place("Alch 1")
    WaitForRound(28)           
    Upgrade("Alch 1",2,0,0)
    WaitForRound(32)           
    Upgrade("Alch 1",1,0,0)
    WaitForRound(33)           
    Upgrade("Alch 1",0,2,0)
    WaitForRound(37)           
    Upgrade("Sub 1",0,0,1)
    WaitForRound(39)           
    Upgrade("Alch 1",1,0,0)
    WaitForRound(40)    
    Place("Druid 1")
    Place("Druid 2")
    WaitForRound(42)
    Place("Druid 3")
    Place("Druid 4")
    Place("Druid 5")
    Place("Druid 6")
    Place("Village 1")
    WaitForRound(44)
    Upgrade("Village 1",0,2,0)
    WaitForRound(45)
    Upgrade("Village 1",2,0,0)
    WaitForRound(46)
    Upgrade("Druid 1",0,1,3)
    WaitForRound(48)
    Upgrade("Druid 1",0,0,1)
    WaitForRound(49)
    Upgrade("Druid 2",0,1,4)
    WaitForRound(50)
    Upgrade("Druid 3",0,1,4)
    WaitForRound(52)
    Upgrade("Druid 4",0,1,4)
    WaitForRound(55)
    Upgrade("Druid 5",0,1,4)
    WaitForRound(57)
    Upgrade("Druid 6",0,1,4)
    WaitForRound(58)
    Place("Alch 2")
    Upgrade("Alch 2",3,0,0)
    WaitForRound(61)
    Upgrade("Alch 2",1,2,0)
    WaitForRound(62)
    Place("Alch 3")
    WaitForRound(63)
    Upgrade("Alch 3",3,2,0)
    WaitForRound(83)
    Upgrade("Druid 1",0,0,1)
    WaitForRound(84)
    Upgrade("Village 1",0,1,0)
    WaitForRound(85)
    Place("Spike 1")
    Upgrade("Spike 1",0,2,3)
    Targeting("Spike 1",1)
    WaitForRound(87)
    Upgrade("Spike 1",0,0,1)
    WaitForRound(97)
    Upgrade("Spike 1",0,0,1)
    Upgrade("Alch 3",1,0,0)
    WaitForRound(100)
    Send(KEYS["ability_2"])
}
