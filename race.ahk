#SingleInstance Force
#MaxThreadsPerHotkey 3
#Include %A_ScriptDir%

#Include maps\_include.ahk
#Include utils\_include.ahk
#Include data\_include.ahk


^!+j:: {
    ClearLogFile()
    LogMsg("Script started")
    Start()
}

^!+p:: {
    LogMsg("Script stopped")
    Reload()
}

Start() {
    global currentRound := 1
    global TS := Map(
        "Hero 1", ["hero", [860, 285]],
        "Tack 1", ["tack", [810, 470]],
        "Dart 1", ["dart", [900, 100]],
        "Bomb 1", ["bomb", [810, 605]],
        "Hero 2", ["hero", [1215, 400]],
        "Tack 2", ["tack", [810, 550]],
        "Wizard 1", ["wizard", [1125, 225]],
        "Wizard 2", ["wizard", [1060, 460]],
        "Tack 3", ["tack", [1130, 475]],
        "Boat 1", ["boat", [930, 820]],
        "Ace 1", ["ace", [925, 700]],
        "Tack 4", ["tack", [900, 100]],
        "Boomer 1", ["boomer", [810, 475]],
    )

        Sleep(1000)
        
        Place("Hero 1")
        Targeting("Hero 1",2)
        Place("Dart 1")
        Place("Tack 1")
        
        ;Start Game
        Send(KEYS["next"]) 
        RandSleep(50,75)
        
        SendtoRound(21)

        Upgrade("Tack 1",0,1,0)

        SendtoRound(24)

        
        Upgrade("Tack 1",0,2,0)


        Upgrade("Tack 1",2,0,0)
        SendtoRound(27)

        Sell("Hero 1")
        RandSleep(100,150)

        Place("Bomb 1")
        Targeting("Bomb 1",1)
        Upgrade("Bomb 1",0,0,2)
        
        SendtoRound(39)
        
        Sell("Tack 1")
        RandSleep(100,150)
        Upgrade("Bomb 1",0,0,1)
        Upgrade("Bomb 1",2,0,0)
        
        
        Place("Hero 2")
        Place("Tack 1")
        Upgrade("Tack 1",3,0,0)

        SendtoRound(45)
        RandSleep(1000,1250)
        Sell("Bomb 1")
        
        Upgrade("Tack 1",1,2,0)
        Place("Tack 2")
        Upgrade("Tack 2",0,4,2)
        SendtoRound(80)
        RandSleep(5000,5250)
        Sell("Tack 1")
        RandSleep(100,200)
        Place("Wizard 1")
        Upgrade("Wizard 1",0,2,4)
        Place("Wizard 2")
        Upgrade("Wizard 2",0,3,2)
        
        Upgrade("Tack 2",0,1,0)
        

        Place("Boat 1")        
        Upgrade("Boat 1",0,4,2)
        Place("Boomer 1")
        Upgrade("Boomer 1",5,0,2)


        Exit()

}
SetTarget(tower,x,y)
{
    SlowClick(TS[tower][2][1],TS[tower][2][2])
    RandSleep(200,300)
    ClickImage("buttons\target",200,"",325,250,425,360)
    SlowClick(x,y)
    Send("{Esc}")       ; Close Tower

}
SendtoRound(ToRound)
{
    LogMsg(ToRound)
    global currentRound
    while(currentRound<ToRound)
        {
            Send(KEYS["next"])
            RandSleep(50,75)
            currentRound := currentRound + 1
            LogMsg("Round sent")
        }
}
ClickHeroAbility(wait)
{
    SearchImage("buttons\gwen_ability","*TransBlack",160,980,250,1080)
    
    if wait = true
    {
             LogMsg("Searching Hero Ability")
             while (SearchImage("buttons\gwen_ability","*TransBlack",160,980,250,1080)=false)
             {}
    }

    SlowClick(x,y)

}

RandSleep(min,max)
{
    Sleep Random(min,max)
}