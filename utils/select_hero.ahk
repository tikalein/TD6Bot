SelectHero() {
    mapData := MAPS[currentMap[1]][currentMap[2]]
    if not mapData[2].Has(difficulty) {
        return
    }
    hero := mapData[2][difficulty][2]
    if hero == "" {
        return
    }
    for style in HERO_SKINS[hero] {
        if SearchImage("hero\" hero "\" style) {
            return
        }
    }
    LogMsg("Changing the hero to " . hero)
    ClickImage("hero\change",2000)
    LogArr(HERO_SKINS[hero])
    for style in HERO_SKINS[hero] {
        if ClickImage("hero\" hero "\select_" style) {
            ClickImage("hero\select")
            ClickImage("hero\back")
            return
        }
    }
    LogMsg("Couldn't change the hero, stopping the script...")
    Reload()
}
