DarkDungeonsImpoppable() {
    global mouseRest := [910, 940]
    global TS := Map(
        "Dart A", ["dart", [335, 820]],
        "Dart B", ["dart", [795, 950]],
        "Dart C", ["dart", [1350, 1040]],
        "Dart D", ["dart", [1550, 435]],
        "Dart E", ["dart", [1070, 890]],
        "Dart F", ["dart", [270, 820]],
        "Sniper", ["sniper", [595, 270]],
        "Sub", ["sub", [1360, 830]],
        "Spike", ["spike", [1045, 450]], 
        "Druid", ["druid", [235, 910]],     
        "Druid B", ["druid", [1570, 870]],          
        "Spike B", ["spike", [80, 165]], 
        "Druid C", ["druid", [1070, 1045]], 
        "Spike C", ["spike", [1600, 180]],  
        "Village", ["village", [925, 960]], 
        "Wizard", ["wizard", [725, 890]],   
    )

    Place("Dart A",true)
    Place("Dart B",true)
    Place("Dart C",true)
    StartGame()
    WaitforRound(7)
    Place("Dart D",true)
    WaitforRound(8)
    Upgrade("Dart A",0,1,0,true)
    WaitforRound(9)
    Place("Dart E",true)
    Sleep(2000)    
    SlowClick(585,365) ; Left Trap
    WaitforRound(10)
    Place("Dart F",true)
    WaitforRound(12)
    Place("Sniper",true)
    WaitforRound(13)
    Place("Sub",true)
    Targeting("Sub",3)
    WaitforRound(15)
    Sleep(2000)
    SlowClick(1085,365) ; Right Trap
    WaitforRound(17)
    Place("Spike",true)
    WaitforRound(18)
    Place("Druid",true)
    Targeting("Druid",3)
    WaitforRound(20)
    Place("Druid B",true)
    Targeting("Druid B",3)
    WaitforRound(22)
    Targeting("Dart A",3)
    WaitforRound(24)
    Sleep(2000)    
    SlowClick(585,365) ; Left Trap
    WaitforRound(25)
    Place("Spike B",true)
    WaitforRound(26)
    Upgrade("Druid",1,0,0,true)
    Upgrade("Druid B",1,0,0,true)
    WaitforRound(27)
    Place("Druid C",true)
    Targeting("Druid C",3)
    Upgrade("Druid C",1,0,0,true)
    WaitforRound(28)
    Sleep(2000)
    SlowClick(1085,365) ; Right Trap
    WaitforRound(31)
    Place("Spike C",true)
    WaitforRound(35)
    Place("Village",true)
    Upgrade("Village",0,0,1,true)
    Upgrade("Druid C",0,3,0,true)
    WaitforRound(37)
    Place("Wizard",true)
    Upgrade("Wizard",0,2,0,true)
    Upgrade("Wizard",1,0,0,true)    
    
}
