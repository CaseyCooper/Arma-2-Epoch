/*
	DayZ Mission System Config by Vampire
	DZMS: https://github.com/SMVampire/DZMS-DayZMissionSystem
*/

///////////////////////////////////////////////////////////////////////
// Do you want your players to gain humanity from killing mission AI?
DZMSMissHumanity = true;

// How Much Humanity?
DZMSCntHumanity = 15;

// Do You Want AI to use NVGs?
//(They are deleted on death)
DZMSUseNVG = true;

// Do you want AI to use RPG7V's?
//(Only one unit per group spawn will have one)
DZMSUseRPG = true;

// Do you want AI kills to count as bandit kills?
DZMSCntBanditKls = true;

// Do you want AI to disappear instantly when killed?
DZMSCleanDeath = false;

// Do you want AI that players run over to not have gear?
// (If DZMSCleanDeath is true, this doesn't matter)
DZMSRunGear = false;

// How long before bodies disappear? (in seconds) (default = 2400)
DZMSBodyTime = 3600;

// Percentage of AI that must be dead before mission completes (default = 0)
//( 0 is 0% of AI / 0.50 is 50% / 1 is 100% )
DZMSRequiredKillPercent = 0.75;

// How long in seconds before mission scenery disappears (default = 1800 / 0 = disabled)
DZMSSceneryDespawnTimer = 1800;

// Should crates despawn with scenery? (default = false)
DZMSSceneryDespawnLoot = false;

//////////////////////////////////////////////////////////////////////////////////////////
// You can adjust the weapons that spawn in weapon crates inside DZMSWeaponCrateList.sqf
// You can adjust the AI's gear inside DZMSAIConfig.sqf in the ExtConfig folder also.
//////////////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////////////
// Do you want to use static coords for missions?
// Leave this false unless you know what you are doing.
DZMSStaticPlc = false;

// Array of static locations. X,Y,Z
DZMSStatLocs = [
	[0,0,0],
	[0,0,0]
];

//////////////////////////////////////////////////////////////////////////////////////////
// Do you want to place some static AI in a base or similar?
// Leave this false unless you know what you are doing.
DZMSStaticAI = false;

// How long before they respawn? (in seconds) (default 2 hours)
// If set longer than the amount of time before a server restart, they respawn at restart
DZMSStaticAITime = 7200;

// How many AI in a group? (Past 6 in a group it's better to just add more positions)
DZMSStaticAICnt = 4;

// Array of Static AI Locations
DZMSStaticSpawn = [
	[0,0,0],
	[0,0,0]
];

///////////////////////////////////////////////////////////////////////////////////////////////////////////
// Do you want vehicles from missions to save to the Database? (this means they will stay after a restart)
// If False, vehicles will disappear on restart. It will warn a player who gets inside of a vehicle.
// This is experimental, and off by default in this version.
DZMSSaveVehicles = false;

/////////////////////////////////////////////////////////////////////////////////////////////
// These are arrays of vehicle classnames for the missions.
// Adjust to your liking.

//Helicopters
DZMSChoppers = ["UH1H_DZE","Mi17_DZE","UH60M_MEV_EP1_DZ","BAF_Merlin_DZE","UH60M_EP1_DZE","AH1Z","Ka52","AH64D_EP1","Ka137_MG_PMC","UH1Y_DZ","MV22"];

//Small Vehicles
DZMSSmallVic = ["HMMWV_M998A2_SOV_DES_EP1_DZ","HMMWV_M1151_M2_CZ_DES_EP1_DZ","LandRover_MG_TK_EP1_DZ","BTR90_HQ","BTR90","UAZ_AGS30_CDF","GAZ_Vodnik_DZ","HMMWV_DZ","SUV_Camo"];

//Large Vehicles
DZMSLargeVic = ["Ural_TK_CIV_EP1","Ural_CDF","Ural_UN_EP1","UralCivil_DZE","UralCivil2_DZE","MTVR_DES_EP1","MTVR","Kamaz_DZE","KamazOpen_DZE","MtvrReammo_DES_EP1","MtvrRepair_DES_EP1","MtvrSupply_DES_EP1"];

/*///////////////////////////////////////////////////////////////////////////////////////////
There are two types of missions that run simultaneously on a the server.
The two types are Major and Minor missions.

Major missions have a higher AI count, but also have more crates to loot.
Minor missions have less AI than Major missions, but have crates that reflect that.

Below is the array of mission file names and the minimum and maximum times they run.
Do not edit the Arrays unless you know what you are doing.
*/
DZMSMajorArray = ["EM1","SM1","SM2","SM3","SM4","SM5","SM6","SM7","SM9","SM10","SM11","SM12","SM13"];
DZMSMinorArray = ["SM1","SM2","SM3","SM4","SM5","SM6","SM9"];

/////////////////////////////////////////////////////////////////////////////////////////////
// The Minumum time in seconds before a major mission will run.
// At least this much time will pass between major missions. Default = 650 (10.8 Minutes)
DZMSMajorMin = 650;

// Maximum time in seconds before a major mission will run.
// A major mission will always run before this much time has passed. Default = 2000 (33.33 Minutes)
DZMSMajorMax = 900;

// Time in seconds before a minor mission will run.
// At least this much time will pass between minor missions. Default = 600 (10 Minutes)
DZMSMinorMin = 600;

// Maximum time in seconds before a minor mission will run.
// A minor mission will always run before this much time has passed. Default = 990 (16.5 Minutes)
DZMSMinorMax = 990;

// Blacklist Zone Array -- missions will not spawn in these areas
// format: [[x,y,z],radius]
// Ex: [[06325,07807,0],300] //Starry Sobor
DZMSBlacklistZones = [
	[[8246.3184,15485.867],75] //Lenzburg
	[[15506.952,13229.368],75] //Emmen
	[[12399.751,5074.5273],75] //Schratten
	[[5149.9814,4864.1191],75] //Hero
];

/*=============================================================================================*/
// Do Not Edit Below This Line
/*=============================================================================================*/
DZMSVersion = "1.2";
