difficulty := ""
victories := 45
defeats := 0

currentRound := 0
currentMap := [2, 0]
mouseRest := [1, 1]
defeated := false

states := [
    "home",
    "map_selection",
    "in_game",
    "apopalypse",
    "collect",
    "event",
    "victory",
    "victory_menu",
    "defeat"
]

difficultyNames := Map(
    "easy", "Easy",
    "primary", "Primary Only",
    "deflation", "Deflation",
    "medium", "Medium",
    "military", "Military Only",
    "apopalypse", "Apopalypse",
    "reverse", "Reverse",
    "hard", "Hard",
    "magic", "Magic Only",
    "double_hp", "Double HP MOABs",
    "half_cash", "Half Cash",
    "alternate", "Alternate Bloons Rounds",
    "impoppable", "Impoppable",
    "chimps", "CHIMPS"
)
