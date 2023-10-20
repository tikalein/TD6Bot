DARK_PATH_DATA := Map(
    "easy", [DarkPathEasy, ""],
    "medium", [DarkPathEasy, ""],
    "hard", [DarkPathEasy, ""],
)

DarkPathEasy() {
    global TS := Map(
        "Dart", ["dart", [1555, 385]],
        "Druid A", ["druid", [470, 960]],
        "Druid B", ["druid", [325, 850]],
        "Sniper", ["sniper", [1180, 770]]
    )
    GeneralEasy()
}
