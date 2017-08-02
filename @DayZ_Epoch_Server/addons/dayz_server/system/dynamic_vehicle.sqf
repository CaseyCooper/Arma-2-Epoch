_Ratio1 = 1;
_Ratio2 = 2;
_Ratio3 = 3;
if (MaxVehicleLimit > 300) then {
	_Ratio1 = round(MaxVehicleLimit * 0.0034);
	_Ratio2 = round(MaxVehicleLimit * 0.0067);
	_Ratio3 = round(MaxVehicleLimit * 0.01);
};
AllowedVehiclesList = [
	//Offroads
	["Pickup_PK_GUE_DZE",_Ratio3],
	["Pickup_PK_INS_DZE",_Ratio3],
	["Pickup_PK_TK_GUE_EP1_DZE",_Ratio3],
	["Offroad_DSHKM_Gue_DZE",_Ratio3],
	//Humvee
	["HMMWV_Ambulance",_Ratio1],
	["HMMWV_Ambulance_CZ_DES_EP1",_Ratio1],
	["HMMWV_DES_EP1",_Ratio3],
	["HMMWV_DZ",_Ratio3],
	["HMMWV_M1035_DES_EP1",_Ratio1],
	["HMMWV_M1151_M2_CZ_DES_EP1_DZE",_Ratio2],
	["HMMWV_M998A2_SOV_DES_EP1_DZE",_Ratio2],
	//GAZ Vodnicks
	["GAZ_Vodnik_DZE",_Ratio1],
	["GAZ_Vodnik_MedEvac",_Ratio1],
	//Land rovers
	["LandRover_CZ_EP1",_Ratio3],
	["LandRover_MG_TK_EP1_DZE",_Ratio1],
	["LandRover_Special_CZ_EP1_DZE",_Ratio1],
	["LandRover_TK_CIV_EP1",_Ratio3],
	// UAZ Vehicles
	["UAZ_CDF",_Ratio3],
	["UAZ_INS",_Ratio3],
	["UAZ_MG_TK_EP1_DZE",_Ratio3],
	["UAZ_RU",_Ratio3],
	["UAZ_Unarmed_TK_CIV_EP1",_Ratio3],
	["UAZ_Unarmed_TK_EP1",_Ratio3],
	["UAZ_Unarmed_UN_EP1",_Ratio3],
	// Added SUVs
	["ArmoredSUV_PMC_DZE",_Ratio2],
	["SUV_Blue",_Ratio1],
	["SUV_Camo",_Ratio1],
	["SUV_Charcoal",_Ratio1],
	["SUV_Green",_Ratio1],
	["SUV_Orange",_Ratio1],
	["SUV_Pink",_Ratio1],
	["SUV_Red",_Ratio1],
	["SUV_Silver",_Ratio1],
	["SUV_TK_CIV_EP1",_Ratio1],
	["SUV_White",_Ratio1],
	["SUV_Yellow",_Ratio1],
	//Helis
	["MH60S_DZE",_Ratio1],
	["pook_H13_transport_CDF",_Ratio1],
	["Ka52",_Ratio1],
	["UH1H_DZE",_Ratio2],
	["UH1Y_DZE",_Ratio2],
	["UH60M_EP1_DZE",_Ratio1],
	["MV22_DZ",_Ratio1],
	["MH6J_DZ",_Ratio3],
	["Mi17_Civilian_DZ",_Ratio3],
	["Mi17_DZE",_Ratio3],
	["CH_47F_EP1_DZE",_Ratio1],
	["CH53_DZE",_Ratio2],
	["pook_H13_medevac_CDF",_Ratio1],
	["pook_H13_civ_white",_Ratio2],
	["CSJ_GyroP",_Ratio2],
	["AH6X_DZ",_Ratio3],
	// V3s added vehicles
	["V3S_Reammo_TK_GUE_EP1",_Ratio1],
	["V3S_Repair_TK_GUE_EP1",_Ratio1],
	["V3S_Salvage_TK_GUE_EP1",_Ratio1],
	["V3S_Supply_TK_GUE_EP1",_Ratio1],
	["V3S_Open_TK_CIV_EP1",_Ratio3],
	["V3S_Open_TK_EP1",_Ratio3],
	["V3S_Refuel_TK_GUE_EP1_DZ",_Ratio1],
	// Ural added vehicles
	["UralReammo_CDF",_Ratio1],
	["UralRepair_CDF",_Ratio1],
	["UralSalvage_TK_EP1",_Ratio1],
	["UralSupply_TK_EP1",_Ratio1],
	["UralRefuel_TK_EP1_DZ",_Ratio1],
	["Ural_CDF",_Ratio3],
	["Ural_TK_CIV_EP1",_Ratio3],
	["Ural_UN_EP1",_Ratio3],
	// Kamaz added vehicles
	["KamazReammo",_Ratio1],
	["KamazRepair",_Ratio1],
	["KamazRefuel_DZ",_Ratio1],
	["Kamaz_DZE",_Ratio3],
	// MTVR added vehicles
	["MtvrReammo_DES_EP1",_Ratio1],
	["MtvrRepair_DES_EP1",_Ratio1],
	["MtvrSalvage_DES_EP1",_Ratio1],
	["MtvrSupply_DES_EP1",_Ratio1],
	["MtvrRefuel_DES_EP1_DZ",_Ratio1],
	["MTVR_DES_EP1",_Ratio3],
	//misc vehicles
	["ATV_CZ_EP1",_Ratio3],
	["ATV_US_EP1",_Ratio3],
	["car_hatchback",_Ratio3],
	["car_sedan",_Ratio3],
	["datsun1_civil_1_open_DZE",_Ratio3],
	["datsun1_civil_2_covered_DZE",_Ratio3],
	["datsun1_civil_3_open_DZE",_Ratio3],
	["GLT_M300_LT",_Ratio3],
	["GLT_M300_ST",_Ratio3],
	["hilux1_civil_1_open_DZE",_Ratio3],
	["hilux1_civil_2_covered_DZE",_Ratio3],
	["hilux1_civil_3_open_DZE",_Ratio3],
	["Ikarus",_Ratio3],
	["Ikarus_TK_CIV_EP1",_Ratio3],
	["Lada1",_Ratio3],
	["Lada1_TK_CIV_EP1",_Ratio3],
	["Lada2",_Ratio3],
	["Lada2_TK_CIV_EP1",_Ratio3],
	["LadaLM",_Ratio3],
	["M1030_US_DES_EP1",_Ratio3],
	["MMT_Civ",(_Ratio3 * 2)],	
	["Old_bike_TK_INS_EP1",_Ratio3],
	["Old_moto_TK_Civ_EP1",_Ratio3],
	["S1203_TK_CIV_EP1",_Ratio3],
	["Skoda",_Ratio3],
	["SkodaBlue",_Ratio1],
	["SkodaGreen",_Ratio1],
	["SkodaRed",_Ratio3],
	["tractor",_Ratio3],
	["TT650_Civ",_Ratio3],
	["TT650_Ins",_Ratio3],
	["TT650_TK_CIV_EP1",_Ratio3],
	["VolhaLimo_TK_CIV_EP1",_Ratio3],
	["Volha_1_TK_CIV_EP1",_Ratio3],
	["Volha_2_TK_CIV_EP1",_Ratio3],
	["VWGolf",_Ratio3]
	
];

if (toLower worldName in ["caribou","chernarus","cmr_ovaron","dayznogova","dingor","dzhg","fallujah","fapovo","fdf_isle1_a","isladuala","lingor","mbg_celle2","namalsk","napf","oring","panthera2","sara","sauerland","smd_sahrani_a2","tasmania2010","tavi","trinity","utes"]) then {
	// water map, add boats
	
	AllowedVehiclesList = AllowedVehiclesList + [
		["Fishing_Boat",_Ratio1],
		["PBX",_Ratio1],
		["RHIB",_Ratio1],
		["Smallboat_1",_Ratio1],
		["Smallboat_2",_Ratio1],
		["Zodiac",_Ratio1]
	];
};