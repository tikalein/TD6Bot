MonkeyMeadowHard() {	
	global TS := Map(
		"Hero 01", ["hero", [637,500]],
		"Dart 01", ["dart", [635,561]],
		"Wizard 01", ["wizard", [497,511]],
		)
	Place("Hero 01")
	Place("Dart 01")
	StartGame()
	WaitForRound(4)
	Place("Wizard 01")
	WaitForRound(6)
	Upgrade("Wizard 01",0,0,1)
	WaitForRound(8)
	Upgrade("Wizard 01",0,1,0)
	WaitForRound(10)
	Upgrade("Wizard 01",0,0,1)
	WaitForRound(13)
	Upgrade("Wizard 01",0,1,0)
	WaitForRound(20)
	Upgrade("Wizard 01",0,0,1)
	WaitForRound(22)
	Upgrade("Dart 01",0,2,2)
	WaitForRound(24)
	Upgrade("Dart 01",0,0,1)
	WaitForRound(32)
	Upgrade("Wizard 01",0,0,1)
	WaitForRound(36)
	Upgrade("Dart 01",0,0,1)
	WaitForRound(50)
	Upgrade("Dart 01",0,0,1)
	WaitForRound(66)
	Upgrade("Wizard 01",0,0,1)
}