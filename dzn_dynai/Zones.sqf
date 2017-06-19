
/* *********** This array defines detailed properties of zones ************************** */
// MAIN BASE


// военный патруль
[
    "enemy2", /* Zone Name */
    "WEST",true, /* Side, is Active */ [],[],
    /* Groups: */
    [
        [
            1, /* Groups quantity */
            /* Units */
            [
                ["rhs_btr80_msv", "Vehicle Road Patrol", ""]
                ,["B_Soldier_F", [0,"Driver"], "kit_military_random"]
                ,["B_Soldier_F", [0,"Gunner"], "kit_military_random"]
                ,["B_Soldier_F", [0,"Commander"], "kit_military_random"]
                ,["B_Soldier_F", [0,"Cargo"], "kit_military_random"]
                ,["B_Soldier_F", [0,"Cargo"], "kit_military_random"]
                ,["B_Soldier_F", [0,"Cargo"], "kit_military_random"]
                ,["B_Soldier_F", [0,"Cargo"], "kit_military_random"]
            ]
        ]
		,[
            2, /* Groups quantity */
            /* Units */
            [
                ["B_Soldier_F", ["indoors"], "kit_military_random"]
                ,["B_Soldier_F", ["indoors"], "kit_military_random"]
            ]
        ]
        ,[
            3, /* Groups quantity */
            /* Units */
            [
                ["B_Soldier_F", [], "kit_military_random"]
                ,["B_Soldier_F", [], "kit_military_random"]
				,["B_Soldier_F", [], "kit_military_random"]
                ,["B_Soldier_F", [], "kit_military_random"]
            ]
        ]
    ],
    /* Behavior: Speed, Behavior, Combat mode, Formation */
    ["LIMITED","SAFE","YELLOW","STAG COLUMN"]
],

// монолит

[
    "enemy1", /* Zone Name */
    "WEST",true, /* Side, is Active */ [],[],
    /* Groups: */
    [
        [
            5, /* Groups quantity */
            /* Units */
            [
                ["B_Soldier_F", [], "kit_monolith_ar"]
                ,["B_Soldier_F", [], "kit_monolith_ar"]
            ]
        ]
        ,[
            6, /* Groups quantity */
            /* Units */
            [
                ["B_Soldier_F", ["indoors"], "kit_monolith_ar"]
            ]
        ]
    ],
    /* Behavior: Speed, Behavior, Combat mode, Formation */
    ["LIMITED","SAFE","YELLOW","WEDGE"]
],
[
    "enemy3", /* Zone Name */
    "WEST",true, /* Side, is Active */ [],[],
    /* Groups: */
    [
        [
            3, /* Groups quantity */
            /* Units */
            [
                ["B_Soldier_F", [], "kit_monolith_ar"]
                ,["B_Soldier_F", [], "kit_monolith_ar"]
                ,["B_Soldier_F", [], "kit_monolith_ar"]
            ]
        ]
    ],
    /* Behavior: Speed, Behavior, Combat mode, Formation */
    ["LIMITED","SAFE","YELLOW","WEDGE"]
],

//сталкеры союзники
[
    "stalk1", /* Zone Name */
    "RESISTANCE",true, /* Side, is Active */ [],[],
    /* Groups: */
    [
        [
            2, /* Groups quantity */
            /* Units */
            [
                ["I_Survivor_F", ["indoors"], "kit_stalkerciv_random"]
                ,["I_Survivor_F", ["indoors"], "kit_stalkerciv_random"]
            ]
        ]
        ,[
            1, /* Groups quantity */
            /* Units */
            [
                ["I_Survivor_F", [], "kit_stalkerciv_random"]
                ,["I_Survivor_F", ["indoors"], "kit_stalkerciv_random"]
                ,["I_Survivor_F", ["indoors"], "kit_stalkerciv_random"]
            ]
        ]
        ,[
            5, /* Groups quantity */
            /* Units */
            [
                ["I_Survivor_F", [], "kit_stalkerciv_random"]
            ]
        ]
    ],
    /* Behavior: Speed, Behavior, Combat mode, Formation */
    ["LIMITED","STEALTH","GREEN","WEDGE"]
],
[
    "stalk2", /* Zone Name */
    "RESISTANCE",true, /* Side, is Active */ [],[],
    /* Groups: */
    [
        [
            2, /* Groups quantity */
            /* Units */
            [
                ["I_Survivor_F", [], "kit_stalkerciv_random"]
                ,["I_Survivor_F", [], "kit_stalkerciv_random"]
            ]
        ]
        ,[
            3, /* Groups quantity */
            /* Units */
            [
                ["I_Survivor_F", [], "kit_stalkerciv_random"]
            ]
        ]
        ,[
            3, /* Groups quantity */
            /* Units */
            [
                ["I_Survivor_F", ["indoors"], "kit_stalkerciv_random"]
            ]
        ]
    ],
    /* Behavior: Speed, Behavior, Combat mode, Formation */
    ["LIMITED","SAFE","WHITE","WEDGE"]
]


