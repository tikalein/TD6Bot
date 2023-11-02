global MAPS := [
    [
        ["Monkey Meadow", MONKEY_MEADOW_DATA], ;#00
        ["In the Loop", IN_THE_LOOP_DATA], ;#01
        ["Middle of the road", MIDDLE_OF_THE_ROAD_DATA], ;#02
        ["Tree Stump", TREE_STUMP_DATA], ;#03
        ["Town Center", TOWN_CENTER_DATA], ;#04
        ["One Two Tree", ONE_TWO_TREE_DATA]    ;#05    
    ],
    [
        ["Scrapyard", SCRAPYARD_DATA], ;#06
        ["The Cabin", THE_CABIN_DATA], ;#07
        ["Resort", RESORT_DATA], ;#08
        ["Skates", SKATES_DATA], ;#09
        ["Lotus Island", LOTUS_ISLAND_DATA], ;#010
        ["Candy Falls", CANDY_FALLS_DATA] ;#11

    ],
    [
        ["Winter Park", WINTER_PARK_DATA], ;#12   
        ["Carved", CARVED_DATA], ;#13
        ["Park Path", PARK_PATH_DATA], ;#14
        ["Alpine Run", ALPINE_RUN_DATA], ;#15
        ["Frozen Over", FROZEN_OVER_DATA], ;#16
        ["Cubism", CUBISM_DATA] ;#17
    ],
    [
        ["Four Circles", FOUR_CIRCLES_DATA], ;#18
        ["Hedge", HEDGE_DATA], ;#19
        ["End of the Road", END_OF_THE_ROAD_DATA], ;#20
        ["Logs", LOGS_DATA] ;#21
    ],
    [
        ["Water Park", WATER_PARK_DATA], ;#22
        ["Polyphemus", POLYPHEMUS_DATA], ;#23
        ["Covered Garden", COVERED_GARDEN_DATA], ;#24
        ["Quarry", QUARRY_DATA], ;#25
        ["Quiet Street", QUIET_STREET_DATA], ;#26
        ["Bloonarius Prime", BLOONARIUS_PRIME_DATA] ;#27
    ],
    [
        ["Balance", BALANCE_DATA], ;#28
        ["Encrypted", ENCRYPTED_DATA], ;#29
        ["Bazaar", BAZAAR_DATA], ;#30
        ["Adora's Temple", ADORAS_TEMPLE_DATA], ;#31
        ["Spring Spring", SPRING_SRPING_DATA], ;#32
        ["KartsNDarts", KARTSNDARTS_DATA] ;#33
    ],
    [
        ["Moon Landing", MOON_LANDING_DATA], ;#34
        ["Haunted", HAUNTED_DATA], ;#35
        ["Downstream", DOWNSTREAM_DATA], ;#36
        ["Firing Range", FIRING_RANGE_DATA], ;#37
        ["Cracked", CRACKED_DATA], ;#38
        ["Streambed", STREAMBED_DATA] ;#39
    ],
    [
        ["Chutes", CHUTES_DATA], ;#40
        ["Rake", RAKE_DATA], ;#41
        ["Spice Islands", SPICE_ISLANDS_DATA] ;#42
    ],
    [
        ["Dark Path", DARK_PATH_DATA], ;#43
        ["Erosion", EROSION_DATA], ;#44
        ["Midnight Mansion", MIDNIGHT_MANSION_DATA], ;#45
        ["Sunken Columns", SUNKEN_COLUMNS_DATA], ;#46
        ["X Factor", X_FACTOR_DATA], ;#47
        ["Mesa", MESA_DATA] ;#48
      
    ],
    [
        ["Geared", GEARED_DATA], ;#49
        ["Spillway", SPILLWAY_DATA], ;#50
        ["Cargo", CARGO_DATA], ;#51
        ["Pat's Pond", PATS_POND_DATA], ;#52
        ["Peninsula", PENINSULA_DATA], ;#53
        ["High Finance", HIGH_FINANCE_DATA], ;#54        
    ],
    [
        ["Another Brick", ANOTHER_BRICK_DATA], ;#55
        ["Off the Coast", OFF_THE_COAST_DATA], ;#56
        ["Cornfield", CORNFIELD_DATA], ;#57
        ["Underground", UNDERGROUND_DATA] ;#58
    ],
    [
        ["Dark Dungeons", DARK_DUNGEONS_DATA], ;#59
        ["Sanctuary", SANCTUARY_DATA], ;#60
        ["Ravine", RAVINE_DATA], ;#61
        ["Flooded Valley", FLOODED_VALLEY_DATA], ;#62
        ["Infernal", INFERNAL_DATA], ;#63
        ["Bloody Puddles", BLOODY_PUDDLES_DATA] ;#64
    ],
    [
        ["Workshop", WORKSHOP_DATA], ;#65
        ["Quad", QUAD_DATA], ;#66
        ["Dark Castle", DARK_CASTLE_DATA], ;#67
        ["Muddy Puddles", MUDDY_PUDDLES_DATA], ;#68
        ["#Ouch", OUCH_DATA] ;#69
    ]
]

global ALL_MAPS := []
global MAP_LOCATIONS := Map()
for pageNumber, page in MAPS {
    for mapNumber, mapData in page {
        name := StrReplace(StrLower(mapData[1]), " ", "_")
        name := StrReplace(StrReplace(name, "'"), "#")
        MAP_LOCATIONS[name] := [pageNumber, mapNumber]
        ALL_MAPS.Push([pageNumber, mapNumber])
    }
}
