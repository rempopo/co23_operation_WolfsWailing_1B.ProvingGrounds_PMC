// ***********************************
// Gear Kits 
// ***********************************
// ******** GEAR CLASSES **********
//
//	Maptools		"ACE_MapTools"	["ACE_MapTools",1]
//	Binocular		"Binocular"	["Binocular",1]		
//
// 	Map			"ItemMap"
//	Compass			"ItemCompass"
//	Watch			"ItemWatch"
//	Personal Radio		"ItemRadio"
//
// ******* KIT NAMES FORMAT ********
//  Kit names format:		kit_FACTION_ROLE
//	Platoon Leader / Командир Взвода	->	kit_ussf_pl
//	Squad Leader / Командир отделения	->	kit_ussf_sl
//	Section Leader				->	kit_ussf_sl
//	2IC					->	kit_ussf_2ic
//	Fireteam Leader				->	kit_ussf_ftl
//	Automatic Rifleman			->	kit_ussf_ar
//	Grenadier / Стрелок (ГП)		->	kit_ussf_gr
//	Rifleman / Стрелок			->	kit_ussf_r
//	Экипаж					->	kit_ussf_crew
//	Пулеметчик				->	kit_ussf_mg
//	Стрелок-Гранатометчик			->	kit_ussf_at
//	Стрелок, помощник гранатометчика	->	kit_ussf_aat
//	Старший стрелок				->	kit_ussf_ar / kit_ussf_ss
//	Снайпер					->	kit_ussf_mm
// ****************
//
// ******** USEFUL MACROSES *******
// Maros for Empty weapon
#define EMPTYKIT	[["","","","",""],["","","","",""],["","","","",""],["","","","",""],[],[["",0],["",0],["",0],["",0],["",0],["",0],["",0],["",0],["",0]],[["",0],["",0],["",0],["",0],["",0],["",0]],[]]
// Macros for Empty weapon
#define EMPTYWEAPON	"","",["","","",""]
// Macros for the list of items to be chosen randomly
#define RANDOM_ITEM	["H_HelmetB_grass","H_HelmetB"]
// Macros to give the item only if daytime is in given inerval (e.g. to give NVGoggles only at night)
#define NIGHT_ITEM(X)	if (daytime < 5 || daytime > 16) then { X } else { "" }

// ******** ASSIGNED and UNIFORM ITEMS MACRO ********
#define NVG_NIGHT_ITEM		if (daytime < 5 || daytime > 16) then { "NVGoggles_OPFOR" } else { "" }
#define BINOCULAR_ITEM		"Binocular"

#define ASSIGNED_ITEMS		"ItemMap","ItemCompass","ItemWatch","ItemRadio", NVG_NIGHT_ITEM
#define ASSIGNED_ITEMS_L	"ItemMap","ItemCompass","ItemWatch","ItemRadio", NVG_NIGHT_ITEM, BINOCULAR_ITEM

#define UNIFORM_ITEMS		["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_elasticBandage",5],["ACE_tourniquet",2],["ACE_morphine",2],["ACE_epinephrine",2],["ACE_quikclot",5],["ACE_CableTie",2],["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1]
#define UNIFORM_ITEMS_L		["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_elasticBandage",5],["ACE_tourniquet",2],["ACE_morphine",2],["ACE_epinephrine",2],["ACE_quikclot",5],["ACE_CableTie",2],["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1],["ACE_MapTools",1]
// ****************


//игроки
kit_stalker_pl = [
	["<EQUIPEMENT >>  ","TRYK_U_B_GRY_PCUs","CUP_V_I_RACS_Carrier_Vest","tf_anprc155_coyote","H_Bandanna_sand","rhs_scarf"],
	["<PRIMARY WEAPON >>  ","","",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[]],
	["<BACKPACK ITEMS >> ",[["ACE_wirecutter",1],["ACE_EntrenchingTool",1],["ACE_IR_Strobe_Item",1]]]
];
kit_stalker_sl = [
	["<EQUIPEMENT >>  ","TRYK_U_B_GRY_PCUs","CUP_V_I_RACS_Carrier_Vest_3","tf_anprc155_coyote","H_ShemagOpen_tan","CUP_FR_NeckScarf2"],
	["<PRIMARY WEAPON >>  ","","",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[]],
	["<BACKPACK ITEMS >> ",[["ACE_wirecutter",1],["ACE_EntrenchingTool",1],["ACE_IR_Strobe_Item",1]]]
];
kit_stalker_ftl = [
	["<EQUIPEMENT >>  ","TRYK_U_B_PCUGHs","CUP_V_I_RACS_Carrier_Vest_3","CUP_B_AlicePack_Bedroll","CUP_H_SLA_BeanieGreen","Mask_M40_OD"],
	["<PRIMARY WEAPON >>  ","","",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[]],
	["<BACKPACK ITEMS >> ",[["ACE_wirecutter",1],["ACE_EntrenchingTool",1],["ACE_IR_Strobe_Item",1]]]
];
kit_stalker_ftl2 = [
	["<EQUIPEMENT >>  ","TRYK_U_B_GRY_PCUs","CUP_V_I_RACS_Carrier_Vest","CUP_B_AlicePack_Bedroll","rhs_altyn_novisor_bala","Mask_M40_OD"],
	["<PRIMARY WEAPON >>  ","","",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[]],
	["<BACKPACK ITEMS >> ",[["ACE_wirecutter",1],["ACE_EntrenchingTool",1],["ACE_IR_Strobe_Item",1]]]
];
kit_stalker_aar = [
	["<EQUIPEMENT >>  ","TRYK_U_B_GRY_PCUs","CUP_V_I_RACS_Carrier_Vest","CUP_B_AlicePack_Bedroll","H_Shemag_olive","Mask_M40_OD"],
	["<PRIMARY WEAPON >>  ","","",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[]],
	["<BACKPACK ITEMS >> ",[["ACE_wirecutter",1],["ACE_EntrenchingTool",1],["ACE_IR_Strobe_Item",1]]]
];
kit_stalker_r = [
	["<EQUIPEMENT >>  ","TRYK_U_B_GRY_PCUs","CUP_V_I_RACS_Carrier_Vest","tf_anprc155_coyote","H_Bandanna_sand","rhs_scarf"],
	["<PRIMARY WEAPON >>  ","","",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[]],
	["<BACKPACK ITEMS >> ",[["ACE_EntrenchingTool",1],["ACE_IR_Strobe_Item",1]]]
];
kit_stalker_ar = [
	["<EQUIPEMENT >>  ","TRYK_U_B_GRY_PCUs","CUP_V_I_RACS_Carrier_Vest_3","CUP_B_AlicePack_Bedroll","TRYK_H_woolhat","Mask_M40_OD"],
	["<PRIMARY WEAPON >>  ","","",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[]],
	["<BACKPACK ITEMS >> ",[["ACE_EntrenchingTool",1],["ACE_IR_Strobe_Item",1]]]
];
kit_stalker_gr = [
	["<EQUIPEMENT >>  ","TRYK_U_B_GRY_PCUs_R","CUP_V_I_RACS_Carrier_Vest_3","CUP_B_AlicePack_Bedroll","CUP_H_SLA_BeanieGreen","Mask_M40_OD"],
	["<PRIMARY WEAPON >>  ","","",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[]],
	["<BACKPACK ITEMS >> ",[["ACE_EntrenchingTool",1],["ACE_IR_Strobe_Item",1]]]
];
kit_stalker_mm = [
	["<EQUIPEMENT >>  ","TRYK_U_B_OD_OD_CombatUniform","usm_vest_LBE_rm_m","TRYK_B_Belt_AOR2","H_Bandanna_cbr","TRYK_Shemagh_mesh"],
	["<PRIMARY WEAPON >>  ","","",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[]],
	["<BACKPACK ITEMS >> ",[["ACE_EntrenchingTool",1],["ACE_IR_Strobe_Item",1]]]
];

// нейтральные
kit_stalkerciv_1 = [
	["<EQUIPEMENT >>  ","CUP_U_C_Labcoat_02","","rhs_sidor","H_Hat_brown",""],
	["<PRIMARY WEAPON >>  ","","",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ","ItemMap","ItemCompass","ItemWatch","tf_anprc152_1"],
	["<UNIFORM ITEMS >> ",[["ACE_morphine",1],["SmokeShellGreen",1]]],
	["<VEST ITEMS >> ",[]],
	["<BACKPACK ITEMS >> ",[["ACE_EntrenchingTool",1],["ACE_IR_Strobe_Item",1]]]
];
kit_stalkerciv_2 = [
	["<EQUIPEMENT >>  ","rhs_uniform_gorka_r_y","rhs_vest_commander","rhs_sidor","H_Watchcap_khk","rhs_scarf"],
	["<PRIMARY WEAPON >>  ","hgun_PDW2000_F","30Rnd_9x21_Mag",["muzzle_snds_L","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",2],["Chemlight_red",2],["ACE_HandFlare_Red",1],["PRIMARY MAG",1]]],
	["<BACKPACK ITEMS >> ",[["ACE_DefusalKit",1],["ACE_wirecutter",1],["MineDetector",1],["ACE_EntrenchingTool",1]]]
];
kit_stalkerciv_3  = [
	["<EQUIPEMENT >>  ","U_BG_Guerrilla_6_1","TRYK_V_harnes_TAN_L","TRYK_B_Belt_br","H_Watchcap_khk","TRYK_Shemagh"],
	["<PRIMARY WEAPON >>  ","CUP_arifle_AKS74U","CUP_30Rnd_545x39_AK_M",["CUP_muzzle_Bizon","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhs_weap_pya","rhs_mag_9x19_17",["","","",""]],
	["<ASSIGNED ITEMS >>  ","ItemMap","ItemCompass","tf_microdagr","tf_anprc152_1"],
	["<UNIFORM ITEMS >> ",[["ACE_fieldDressing",2],["ACE_morphine",1],["SmokeShellGreen",1],["Chemlight_green",1],["PRIMARY MAG",1]]],
	["<VEST ITEMS >> ",[["ACE_IR_Strobe_Item",1],["ACE_DefusalKit",1],["ACE_EntrenchingTool",1],["SmokeShellOrange",1],["Chemlight_green",1],["CUP_30Rnd_TE1_Green_Tracer_545x39_AK_M",5],["rhs_mag_rgd5",2],["rhs_mag_mk84",1],["rhs_mag_fakels",2],["Chemlight_red",1],["SmokeShellRed",1],["CUP_30Rnd_Subsonic_545x39_AK_M",1],["HANDGUN MAG",2]]],
	["<BACKPACK ITEMS >> ",[["CUP_30Rnd_TE1_Green_Tracer_545x39_AK_M",4],["HANDGUN MAG",1]]]
];
kit_stalkerciv_4  = [
	["<EQUIPEMENT >>  ","TRYK_U_B_PCUODHs","usm_vest_LBE_rm_m","rhs_sidor","H_Bandanna_cbr","Mask_M40"],
	["<PRIMARY WEAPON >>  ","rhs_weap_aks74u","rhs_30Rnd_545x39_AK",["rhs_acc_pgs64_74u","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhs_weap_makarov_pm","rhs_mag_9x18_8_57N181S",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["ACE_personalAidKit",1],["rhs_30Rnd_545x39_7N6_AK",1],["rhs_mag_an_m14_th3",2],["rhs_mag_nspn_yellow",2],["rhs_mag_mk84",3],["rhs_mag_rgd5",4],["HANDGUN MAG",10]]],
	["<BACKPACK ITEMS >> ",[["rhs_30Rnd_545x39_7N6_AK",5]]]
];
kit_stalkerciv_5 = [
	["<EQUIPEMENT >>  ","TRYK_U_B_PCUGs_OD_R","usm_vest_LBE_rm_m","rhs_sidor","TRYK_H_woolhat","Mask_M40"],
	["<PRIMARY WEAPON >>  ","rhs_weap_aks74u","rhs_30Rnd_545x39_AK",["rhs_acc_pgs64_74u","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhs_weap_makarov_pm","rhs_mag_9x18_8_57N181S",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["ACE_personalAidKit",1],["rhs_30Rnd_545x39_7N6_AK",1],["rhs_mag_an_m14_th3",2],["rhs_mag_nspn_yellow",2],["rhs_mag_mk84",3],["rhs_mag_rgd5",4],["HANDGUN MAG",10]]],
	["<BACKPACK ITEMS >> ",[["rhs_30Rnd_545x39_7N6_AK",5]]]
	
];
kit_stalkerciv_6 = [
	["<EQUIPEMENT >>  ","CUP_U_C_Labcoat_02","","rhs_sidor","CUP_H_NAPA_Fedora","G_Spectacles"],
	["<PRIMARY WEAPON >>  ","","",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  "],
	["<UNIFORM ITEMS >> ",[]],
	["<VEST ITEMS >> ",[]],
	["<BACKPACK ITEMS >> ",[["ACE_SpraypaintGreen",1],["ACE_tourniquet",1],["ACE_SpraypaintRed",1],["ACE_bodyBag",2],["ACE_EntrenchingTool",1],["ACE_surgicalKit",1],["rhs_mag_mk84",6],["rhs_mag_nspn_yellow",4],["rhs_mag_m7a3_cs",2]]]
];

kit_stalkerciv_random = [
	"kit_stalkerciv_1"
	,"kit_stalkerciv_2"
	,"kit_stalkerciv_3"
	,"kit_stalkerciv_4"
	,"kit_stalkerciv_5"
	,"kit_stalkerciv_6"
 ];
 
// бот учёный
kit_sc_1 = [
	["<EQUIPEMENT >>  ","TRYK_U_B_PCUHsW5","","TRYK_Winter_pack","","Mask_M50"],
	["<PRIMARY WEAPON >>  ","","",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[]],
	["<BACKPACK ITEMS >> ",[]]
];

// боец монолита
kit_monolith_ar = [
	["<EQUIPEMENT >>  ","TRYK_U_B_PCUHsW7","TRYK_V_PlateCarrier_blk","","TRYK_H_PASGT_BLK","Mask_M50"],
	["<PRIMARY WEAPON >>  ","CUP_lmg_m249_para","CUP_200Rnd_TE4_Red_Tracer_556x45_M249",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhsusf_weap_m9","rhsusf_mag_15Rnd_9x19_JHP",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",2],["rhs_mag_fakels",1]]],
	["<BACKPACK ITEMS >> ",[]]
];

// gunter voigt
kit_gunter = [
	["<EQUIPEMENT >>  ","TRYK_SUITS_BLK_F","","","H_Beret_blk","Mask_M50"],
	["<PRIMARY WEAPON >>  ","","",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[]],
	["<BACKPACK ITEMS >> ",[]]
];

// боты военный патруль
kit_military_r = [
	["<EQUIPEMENT >>  ","rhs_uniform_emr_patchless","rhs_6b23_6sh116_od","","rhs_altyn_novisor","Mask_M40_OD"],
	["<PRIMARY WEAPON >>  ","rhs_weap_ak103","rhs_30Rnd_762x39mm",["rhs_acc_dtk","rhs_acc_2dpZenit","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhs_weap_makarov_pm","rhs_mag_9x18_8_57N181S",["","","",""]],
	["<ASSIGNED ITEMS >>  "],
	["<UNIFORM ITEMS >> ",[["PRIMARY MAG",1],["HANDGUN MAG",3]]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",7],["HANDGUN MAG",2],["rhs_mag_rgd5",2]]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_military_gp = [
	["<EQUIPEMENT >>  ","rhs_uniform_emr_patchless","rhs_6b23_6sh116_vog_od","","rhs_altyn_novisor","Mask_M40_OD"],
	["<PRIMARY WEAPON >>  ","rhs_weap_ak103_gp25","rhs_30Rnd_762x39mm",["rhs_acc_dtk","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhs_weap_makarov_pm","rhs_mag_9x18_8_57N181S",["","","",""]],
	["<ASSIGNED ITEMS >>  "],
	["<UNIFORM ITEMS >> ",[["HANDGUN MAG",3]]],
	["<VEST ITEMS >> ",[["HANDGUN MAG",2],["rhs_mag_rgd5",2],["PRIMARY MAG",8],["rhs_VOG25",6]]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_military_gr = [
	["<EQUIPEMENT >>  ","rhs_uniform_emr_patchless","rhs_6b23_6sh116_vog_od","","rhs_altyn_novisor","Mask_M40_OD"],
	["<PRIMARY WEAPON >>  ","rhs_weap_ak103","rhs_30Rnd_762x39mm",["rhs_acc_dtk","","",""]],
	["<LAUNCHER WEAPON >>  ","rhs_weap_rpg26","rhs_rpg26_mag",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhs_weap_makarov_pm","rhs_mag_9x18_8_57N181S",["","","",""]],
	["<ASSIGNED ITEMS >>  "],
	["<UNIFORM ITEMS >> ",[["HANDGUN MAG",3]]],
	["<VEST ITEMS >> ",[["HANDGUN MAG",4],["rhs_mag_rgd5",2],["rhs_VOG25",6],["PRIMARY MAG",7],["SECONDARY MAG",1]]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_military_sl = [
	["<EQUIPEMENT >>  ","rhs_uniform_emr_patchless","rhs_6b23_6sh116_vog_od","tf_mr3000_rhs","rhs_altyn_novisor","Mask_M40_OD"],
	["<PRIMARY WEAPON >>  ","rhs_weap_ak103","rhs_30Rnd_762x39mm",["rhs_acc_dtk","","rhs_acc_ekp1",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhs_weap_makarov_pm","rhs_mag_9x18_8_57N181S",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["HANDGUN MAG",4],["rhs_mag_rgd5",2],["rhs_VOG25",6],["PRIMARY MAG",7]]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_military_ar = [
	["<EQUIPEMENT >>  ","rhs_uniform_emr_patchless","rhs_6b23_6sh116_od","TRYK_B_Alicepack","rhs_altyn_novisor","Mask_M40_OD"],
	["<PRIMARY WEAPON >>  ","rhs_weap_pkp","rhs_100Rnd_762x54mmR",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhs_weap_makarov_pm","rhs_mag_9x18_8_57N181S",["","","",""]],
	["<ASSIGNED ITEMS >>  "],
	["<UNIFORM ITEMS >> ",[["HANDGUN MAG",3]]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",2],["rhs_VOG25",6],["PRIMARY MAG",1],["HANDGUN MAG",2]]],
	["<BACKPACK ITEMS >> ",[["PRIMARY MAG",4]]]
];
kit_military_random = [
	"kit_military_r"
	,"kit_military_ar"
	,"kit_military_gr"
	,"kit_military_gp"
	,"kit_military_sl"
 ];