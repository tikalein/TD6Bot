MonkeyMeadowDeflation() {
	global TS := Map(
		"Hero 01", ["hero", [635,499]],
		"Wizard 01", ["wizard", [712,503]],
		"Bomb 01", ["bomb", [634,568]],
		"Alch 01", ["alch", [715,564]],
		"Village 01", ["village", [803,538]],
		)
	
	Place("Hero 01")
	Place("Wizard 01")
	Place("Bomb 01")
	Place("Alch 01")
	Place("Village 01")
	Upgrade("Wizard 01",0,3,2)
	Upgrade("Bomb 01",2,0,4)
	Upgrade("Alch 01",3,2,0)
	Upgrade("Village 01",2,2,0)
	StartGame()
}