//Custom Spawns file//
/*
Custom group spawns Eg.

[[953.237,4486.48,0.001], //position
4,						  //Number Of units
1,					      //Skill level 0-1 or skill array number if using custom skills "Random" for random Skill array.
"Random",			      //Primary gun set number. "Random" for random weapon set.
4,						  //Number of magazines
"",						  //Backpack "" for random or classname here.
"Bandit2_DZ",			  //Skin "" for random or classname here.
"Random"                  //Gearset number. "Random" for random gear set.
] call spawn_group;

Place your custom group spawns below
*/


[[16563.9,18256.5,0.001],
5,						  //Number Of units
"Random",					      //Skill level 0-1 or skill array number if using custom skills "Random" for random Skill array.
"Random",			      //Primary gun set number. "Random" for random weapon set.
6,						  //Number of magazines
"",						  //Backpack "" for random or classname here.
"Bandit2_DZ",			  //Skin "" for random or classname here.
"Random"                  //Gearset number. "Random" for random gear set.
] call spawn_group;




[[17203.9,3524.62,0.001],
10,						  //Number Of units
"Random",					      //Skill level 0-1 or skill array number if using custom skills "Random" for random Skill array.
"Random",			      //Primary gun set number. "Random" for random weapon set.
6,						  //Number of magazines
"",						  //Backpack "" for random or classname here.
"Bandit2_DZ",			  //Skin "" for random or classname here.
"Random"                  //Gearset number. "Random" for random gear set.
] call spawn_group;



[[812.577,6910.47,0.001],
5,						  //Number Of units
"Random",					      //Skill level 0-1 or skill array number if using custom skills "Random" for random Skill array.
"Random",			      //Primary gun set number. "Random" for random weapon set.
6,						  //Number of magazines
"",						  //Backpack "" for random or classname here.
"Bandit2_DZ",			  //Skin "" for random or classname here.
"Random"                  //Gearset number. "Random" for random gear set.
] call spawn_group;

[[2889.01,6211.29,0.001],
5,						  //Number Of units
"Random",					      //Skill level 0-1 or skill array number if using custom skills "Random" for random Skill array.
"Random",			      //Primary gun set number. "Random" for random weapon set.
6,						  //Number of magazines
"",						  //Backpack "" for random or classname here.
"Bandit2_DZ",			  //Skin "" for random or classname here.
"Random"                  //Gearset number. "Random" for random gear set.
] call spawn_group;

[[10180,18335.9,0.001],
5,						  //Number Of units
"Random",					      //Skill level 0-1 or skill array number if using custom skills "Random" for random Skill array.
"Random",			      //Primary gun set number. "Random" for random weapon set.
6,						  //Number of magazines
"",						  //Backpack "" for random or classname here.
"Bandit2_DZ",			  //Skin "" for random or classname here.
"Random"                  //Gearset number. "Random" for random gear set.
] call spawn_group;

/*
Custom static weapon spawns Eg. (with one position)

[[[911.21545,4532.7612,2.6292224]], //position(s) (can be multiple).
"M2StaticMG",             //Classname of turret
0.2,					  //Skill level 0-1. Has no effect if using custom skills
"Bandit2_DZ",			  //Skin "" for random or classname here.
1,						  //Primary gun set number. "Random" for random weapon set. (not needed if ai_static_useweapon = False)
2,						  //Number of magazines. (not needed if ai_static_useweapon = False)
"",						  //Backpack "" for random or classname here. (not needed if ai_static_useweapon = False)
"Random"				  //Gearset number. "Random" for random gear set. (not needed if ai_static_useweapon = False)
] call spawn_static;

Custom static weapon spawns Eg. (with mutiple positions)

[[[911.21545,4532.7612,2.6292224],[921.21545,4532.7612,2.6292224]], //position(s) (can be multiple).
"M2StaticMG",             //Classname of turret
0.5,					  //Skill level 0-1. Has no effect if using custom skills
"Bandit2_DZ",			  //Skin "" for random or classname here. 
1,						  //Primary gun set number. "Random" for random weapon set. (not needed if ai_static_useweapon = False)
2,						  //Number of magazines. (not needed if ai_static_useweapon = False)
"",						  //Backpack "" for random or classname here. (not needed if ai_static_useweapon = False)
"Random"				  //Gearset number. "Random" for random gear set. (not needed if ai_static_useweapon = False)
] call spawn_static;

Place your custom static weapon spawns below
*/






[[[16543.9,18219.301,0.125],[16566,18202.199,0.125],[16541.5,18222.5,7.812],[16593.9,18205.199,0.125],[17225.301,3552,0.001],[17172.6,3525.98,0.001],[842.361,6978.37,0.487],[850.298,6945.39,0.001],[2867.82,6189.92,0.001],[2919.09,6203.55,0.001],[10163,18333.301,3.704]], //position(s) (can be multiple).
"M2StaticMG",             //Classname of turret
0.4,					  //Skill level 0-1. Has no effect if using custom skills
"Bandit2_DZ",			  //Skin "" for random or classname here.
1,						  //Primary gun set number. "Random" for random weapon set. (not needed if ai_static_useweapon = False)
2,						  //Number of magazines. (not needed if ai_static_useweapon = False)
"",						  //Backpack "" for random or classname here. (not needed if ai_static_useweapon = False)
"Random"				  //Gearset number. "Random" for random gear set. (not needed if ai_static_useweapon = False)
] call spawn_static;











/*
Custom Chopper Patrol spawn Eg.

[[725.391,4526.06,0],    //Position to patrol
[0,0,0],	             // Position to spawn chopper at
6000,					//Radius of patrol
10,                     //Number of waypoints to give
"CH_47F_EP1_DZE",		        //Classname of vehicle (make sure it has driver and two gunners)
1						//Skill level of units 
] spawn heli_patrol;

Place your heli patrols below
*/

[[13709.3,2936.84,0.001],    //Position to patrol
[13687.2,2927.59,0.002],	             // Position to spawn chopper at
10000,					//Radius of patrol
10,                     //Number of waypoints to give
"UH60M_EP1",		        //Classname of vehicle (make sure it has driver and two gunners)
.5						//Skill level of units 
] spawn heli_patrol;

[[7575.57,7848.92,0.001],    //Position to patrol
[7575.57,7848.92,0.001],	             // Position to spawn chopper at
10000,					//Radius of patrol
10,                     //Number of waypoints to give
"UH1Y_DZ",		        //Classname of vehicle (make sure it has driver and two gunners)
.5						//Skill level of units 
] spawn heli_patrol;

/* 
Custom Vehicle patrol spawns Eg. (Watch out they are stupid)

[[725.391,4526.06,0],   //Position to patrol
[725.391,4526.06,0],	// Position to spawn at
200,					//Radius of patrol
10,                     //Number of waypoints to give
"HMMWV_Armored",		//Classname of vehicle (make sure it has driver and gunner)
1						//Skill level of units 
] spawn vehicle_patrol;

Place your vehicle patrols below this line
*/





/*
Paradropped unit custom spawn Eg.

[[911.21545,4532.7612,2.6292224],  //Position that units will be dropped by
[0,0,0],                           //Starting position of the heli
400,                               //Radius from drop position a player has to be to spawn chopper
"UH1H_DZ",                         //Classname of chopper (Make sure it has 2 gunner seats!)
5,                                 //Number of units to be para dropped
1,                                 //Skill level 0-1 or skill array number if using custom skills "Random" for random Skill array.
"Random",                          //Primary gun set number. "Random" for random weapon set.
4,                                 //Number of magazines
"",                                //Backpack "" for random or classname here.
"Bandit2_DZ",                      //Skin "" for random or classname here.
"Random",                          //Gearset number. "Random" for random gear set.
True                               //True: Heli will stay at position and fight. False: Heli will leave if not under fire. 
] spawn heli_para;

Place your paradrop spawns under this line
*/

[[16563.9,18256.5,0.001],  //Position that units will be dropped by
[17203.9,3524.62,15.812],                           //Starting position of the heli
500,                               //Radius from drop position a player has to be to spawn chopper
"UH1H_DZ",                         //Classname of chopper (Make sure it has 2 gunner seats!)
8,                                 //Number of units to be para dropped
"Random",                                 //Skill level 0-1 or skill array number if using custom skills "Random" for random Skill array.
"Random",                          //Primary gun set number. "Random" for random weapon set.
4,                                 //Number of magazines
"",                                //Backpack "" for random or classname here.
"Bandit2_DZ",                      //Skin "" for random or classname here.
"Random",                          //Gearset number. "Random" for random gear set.
True                               //True: Heli will stay at position and fight. False: Heli will leave if not under fire. 
] spawn heli_para;



[[812.577,6910.47,0.001],  //Position that units will be dropped by
[17203.9,3524.62,15.812],                           //Starting position of the heli
500,                               //Radius from drop position a player has to be to spawn chopper
"UH1H_DZ",                         //Classname of chopper (Make sure it has 2 gunner seats!)
8,                                 //Number of units to be para dropped
"Random",                                 //Skill level 0-1 or skill array number if using custom skills "Random" for random Skill array.
"Random",                          //Primary gun set number. "Random" for random weapon set.
4,                                 //Number of magazines
"",                                //Backpack "" for random or classname here.
"Bandit2_DZ",                      //Skin "" for random or classname here.
"Random",                          //Gearset number. "Random" for random gear set.
True                               //True: Heli will stay at position and fight. False: Heli will leave if not under fire. 
] spawn heli_para;

[[10180,18335.9,0.001],  //Position that units will be dropped by
[17203.9,3524.62,15.812],                           //Starting position of the heli
500,                               //Radius from drop position a player has to be to spawn chopper
"UH1H_DZ",                         //Classname of chopper (Make sure it has 2 gunner seats!)
8,                                 //Number of units to be para dropped
"Random",                                 //Skill level 0-1 or skill array number if using custom skills "Random" for random Skill array.
"Random",                          //Primary gun set number. "Random" for random weapon set.
4,                                 //Number of magazines
"",                                //Backpack "" for random or classname here.
"Bandit2_DZ",                      //Skin "" for random or classname here.
"Random",                          //Gearset number. "Random" for random gear set.
False                               //True: Heli will stay at position and fight. False: Heli will leave if not under fire. 
] spawn heli_para;

[[2889.01,6211.29,0.001],  //Position that units will be dropped by
[17203.9,3524.62,15.812],                           //Starting position of the heli
500,                               //Radius from drop position a player has to be to spawn chopper
"UH1H_DZ",                         //Classname of chopper (Make sure it has 2 gunner seats!)
8,                                 //Number of units to be para dropped
"Random",                                 //Skill level 0-1 or skill array number if using custom skills "Random" for random Skill array.
"Random",                          //Primary gun set number. "Random" for random weapon set.
4,                                 //Number of magazines
"",                                //Backpack "" for random or classname here.
"Bandit2_DZ",                      //Skin "" for random or classname here.
"Random",                          //Gearset number. "Random" for random gear set.
False                               //True: Heli will stay at position and fight. False: Heli will leave if not under fire. 
] spawn heli_para;