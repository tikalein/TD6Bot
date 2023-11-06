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
        "Dart 1", ["dart", [333, 820]],
        "Dart 2", ["dart", [797, 936]],
        "Sub 1", ["sub", [1425, 882]],
        "Hero 1", ["hero", [349, 933]],
        "Druid 1", ["druid", [1567, 859]],
        "Druid 2", ["druid", [903, 1017]],
        "Druid 3", ["druid", [252, 909]],
        "Spike 1", ["spike", [904, 518]],
        "Village 1", ["village", [1035, 465]],
        "Spike 2", ["spike", [1423, 164]],
        "Spike 3", ["spike", [69, 271]],
        "Village 3", ["village", [316, 261]],
          )


    Place("Dart 1")
    Place("Dart 2")
    Place("Sub 1")

    StartGame()

    Upgrade("Dart 1",0,0,1)
    Place("Hero 1")
    Place("Druid 1")
    Place("Druid 2")
    Place("Druid 3")
    Upgrade("Dart 2",0,1,0)
    Upgrade("Druid 1",0,3,0)
    Targeting("Druid 1",1)
    Upgrade("Druid 1",1,0,0)
    Upgrade("Druid 3",1,0,0)
    Upgrade("Druid 2",1,3,0)
    Targeting("Druid 2",1)
    Upgrade("Druid 3",0,3,0)
    Targeting("Druid 3",1)
    
    Place("Village 1")
    Upgrade("Village 1",0,0,2)
    Place("Spike 1")
    Upgrade("Spike 1",3,2,0)
    Place("Spike 2")
    Place("Spike 3")
;    Place("Village 3")
;    Upgrade("Village 3",0,0,2)
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