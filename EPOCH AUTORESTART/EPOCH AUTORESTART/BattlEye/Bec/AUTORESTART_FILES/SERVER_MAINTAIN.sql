-- --------------------------------------------------------------------------------
-- --------------------------------Base Maintenance--------------------------------
-- --------------------------------------------------------------------------------

-- ----------------------------
-- Fix inventory on maintainable objects.
-- ----------------------------
UPDATE `object_data`
SET `inventory` = '[]',`LastUpdated` = `LastUpdated`
WHERE `inventory` = '[[[],[]],[[],[]],[[],[]]]'
AND
`Classname` IN ('BagFenceRound_DZ','CinderWall_DZ','CinderWallDoorLocked_DZ','CinderWallDoorSmall_DZ','CinderWallDoorSmallLocked_DZ','CinderWallHalf_DZ','FireBarrel_DZ','GunRack_DZ','LightPole_DZ','MetalFloor_DZ','MetalPanel_DZ','OutHouse_DZ','TentStorage','TentStorageDomed','TentStorageDomed2','Sandbag1_DZ','Scaffolding_DZ','StickFence_DZ','StorageShed_DZ','WorkBench_DZ','WoodCrate_DZ','WoodFloor_DZ','WoodFloorQuarter_DZ','WoodLargeWall_DZ','WoodLargeWallWin_DZ','WoodShack_DZ','WoodSmallWall_DZ','WoodSmallWallThird_DZ','WoodSmallWallWin_DZ','Land_DZE_GarageWoodDoor','WoodFloorHalf_DZ','Fort_RazorWire','Land_DZE_LargeWoodDoorLocked','WoodStairsRails_DZ','WoodLadder_DZ','WoodStairsSans_DZ','M240Nest_DZ','Land_DZE_WoodDoor');

-- ----------------------------
-- Set 0.1 damage to objects daily.
-- ----------------------------
UPDATE `object_data`
SET `Damage` = IF( `Damage` = 0.0, 0.1, `Damage` + 0.1 )
WHERE `LastUpdated` <= DATE_SUB(NOW(), INTERVAL 1 DAY)
AND `ObjectUID` <> 0
AND `CharacterID` <> 0
AND ( (`Inventory` IS NULL) OR (`Inventory` = '[]') );

-- ----------------------------
-- Set 0.1 damage doors/plots daily.
-- ----------------------------
UPDATE `object_data`
SET `Damage` = IF( `Damage` = 0.0, 0.1, `Damage` + 0.1 )
WHERE `Classname` IN ('Plastic_Pole_EP1_DZ','CinderWallDoorSmallLocked_DZ','CinderWallDoorLocked_DZ','CinderWallSmallDoorway_DZ','CinderWallDoorway_DZ','Land_DZE_WoodDoorLocked','CinderWallDoor_DZ','CinderWallDoorSmall_DZ','Land_DZE_WoodDoor','Land_DZE_GarageWoodDoor','Land_DZE_GarageWoodDoorLocked','Land_DZE_LargeWoodDoorLocked','Land_DZE_LargeWoodDoor','WoodLargeWallDoor_DZ')
AND `LastUpdated` < DATE_SUB(CURRENT_TIMESTAMP, INTERVAL 1 DAY)
AND `Inventory` != '[]';

-- ----------------------------
-- Set safe combinations to 0000 after 10 days of inactivity.
-- ----------------------------
UPDATE `object_data`
SET `CharacterID` = 0
WHERE `LastUpdated` < DATE_SUB(CURRENT_TIMESTAMP, INTERVAL 10 DAY)
AND `CharacterID` > 0
AND `Classname` = "VaultStorageLocked"
AND `Inventory` <> '[]'
AND `Inventory` IS NOT NULL;

-- ----------------------------
-- Set lockbox combinations to RED00 after 10 days of inactivity.
-- ----------------------------
UPDATE `object_data`
SET `CharacterID` = 10000
WHERE `LastUpdated` < DATE_SUB(CURRENT_TIMESTAMP, INTERVAL 10 DAY)
AND `CharacterID` > 0
AND `Classname` = "LockboxStorageLocked"
AND `Inventory` <> '[]'
AND `Inventory` IS NOT NULL;

-- ----------------------------
-- Delete empty storage objects.
-- ----------------------------
DELETE FROM `object_data`
WHERE `LastUpdated` < DATE_SUB(CURRENT_TIMESTAMP, INTERVAL 3 DAY)
AND ( (`Inventory` IS NULL) OR (`Inventory` = '[]') OR (`Inventory` = '[[[],[]],[[],[]],[[],[]]]') )
AND `Classname` IN ('Wooden_shed_DZ','WoodShack_DZ', 'TentStorage', 'TentStorageDomed', 'TentStorageDomed2', 'WoodCrate_DZ', 'GunRack_DZ', 'OutHouse_DZ', 'StorageShed_DZ');

-- ----------------------------
-- Delete inactive storage objects.
-- ----------------------------
DELETE FROM `object_data`
WHERE `LastUpdated` < DATE_SUB(CURRENT_TIMESTAMP, INTERVAL 10 DAY)
AND `Classname` IN ('Wooden_shed_DZ','WoodShack_DZ', 'TentStorage', 'TentStorageDomed', 'TentStorageDomed2', 'WoodCrate_DZ', 'GunRack_DZ', 'OutHouse_DZ', 'StorageShed_DZ');

-- ----------------------------
-- Delete objects that have 1 damage.
-- ----------------------------
DELETE FROM `object_data`
WHERE Damage = 1;

-- ----------------------------
-- Delete plot poles and doors not being deleted.
-- ----------------------------
DELETE FROM `object_data`
WHERE `LastUpdated` < DATE_SUB(CURRENT_TIMESTAMP, INTERVAL 11 DAY)
AND `Classname` IN ('Plastic_Pole_EP1_DZ','CinderWallDoorSmallLocked_DZ','CinderWallDoorLocked_DZ','CinderWallSmallDoorway_DZ','CinderWallDoorway_DZ','Land_DZE_WoodDoorLocked','CinderWallDoor_DZ','CinderWallDoorSmall_DZ','Land_DZE_WoodDoor','Land_DZE_GarageWoodDoor','Land_DZE_GarageWoodDoorLocked','Land_DZE_LargeWoodDoorLocked','Land_DZE_LargeWoodDoor','WoodLargeWallDoor_DZ');

-- ----------------------------
-- Delete old stuff.
-- ----------------------------
DELETE FROM `object_data`
WHERE `LastUpdated` < DATE_SUB(CURRENT_TIMESTAMP, INTERVAL 21 DAY);

-- --------------------------------------------------------------------------------
-- ------------------------------Vehicle Maintenance-------------------------------
-- --------------------------------------------------------------------------------

-- ----------------------------
-- Delete Bikes, ATV's, Mozzie's, 350z's, and Busses.
-- ----------------------------
DELETE FROM `object_data`
WHERE `Classname` IN ('MMT_Civ','Old_bike_TK_INS_EP1','TT650_Civ','TT650_Ins','Old_moto_TK_Civ_EP1','M1030_US_DES_EP1','TT650_TK_CIV_EP1','ATV_CZ_EP1','ATV_US_EP1','CSJ_GyroC','350z','350z_red','350z_kiwi','350z_black','350z_silver','350z_green','350z_blue','350z_gold','350z_white','350z_pink','350z_mod','350z_ruben','350z_v','350z_city','350z_yellow','Ikarus','Ikarus_TK_CIV_EP1');

-- ----------------------------
-- Delete useless vehicles with no keys.
-- ----------------------------
DELETE FROM `object_data`
WHERE `LastUpdated` < DATE_SUB(CURRENT_TIMESTAMP, INTERVAL 4 HOUR)
AND `CharacterID` = '0'
AND `Classname` IN ('AN2_DZ','GNT_C185U','GNT_C185','GNT_C185R','GNT_C185C','RHIB','Smallboat_1','Smallboat_2','Zodiac','Fishing_Boat','PBX','JetSkiYanahui_Case_Red','JetSkiYanahui_Case_Yellow','JetSkiYanahui_Case_Green','JetSkiYanahui_Case_Blue','CSJ_GyroP','CSJ_GyroCover','LandRover_CZ_EP1','LandRover_TK_CIV_EP1','HMMWV_M1035_DES_EP1','HMMWV_Ambulance','HMMWV_Ambulance_CZ_DES_EP1','HMMWV_DZ','HMMWV_DES_EP1','Civcar','Civcarbu','civcarbl','Civcarre','Civcarge','Civcarwh','Civcarsl','hilux1_civil_3_open_EP1','datsun1_civil_3_open_DZE','hilux1_civil_1_open_DZE','datsun1_civil_2_covered_DZE','datsun1_civil_1_open_DZE','hilux1_civil_2_covered_DZE','Skoda','SkodaBlue','SkodaGreen','SkodaRed','VolhaLimo_TK_CIV_EP1','Volha_1_TK_CIV_EP1','Volha_2_TK_CIV_EP1','VWGolf','car_hatchback','car_sedan','GLT_M300_LT','GLT_M300_ST','Lada1','Lada1_TK_CIV_EP1','Lada2','Lada2_TK_CIV_EP1','LadaLM','SUV_TK_CIV_EP1','SUV_Blue','SUV_Charcoal','SUV_Green','SUV_Orange','SUV_Pink','SUV_Red','SUV_Silver','SUV_White','SUV_Yellow','SUV_Camo','UAZ_CDF','UAZ_INS','UAZ_RU','UAZ_Unarmed_TK_CIV_EP1','UAZ_Unarmed_TK_EP1','UAZ_Unarmed_UN_EP1');

-- ----------------------------
-- Delete useless vehicles with keys.
-- ----------------------------
DELETE FROM `object_data`
WHERE `LastUpdated` < DATE_SUB(CURRENT_TIMESTAMP, INTERVAL 3 DAY)
AND `CharacterID` > 0
AND `Classname` IN ('AN2_DZ','GNT_C185U','GNT_C185','GNT_C185R','GNT_C185C','RHIB','Smallboat_1','Smallboat_2','Zodiac','Fishing_Boat','PBX','JetSkiYanahui_Case_Red','JetSkiYanahui_Case_Yellow','JetSkiYanahui_Case_Green','JetSkiYanahui_Case_Blue','CSJ_GyroP','CSJ_GyroCover','LandRover_CZ_EP1','LandRover_TK_CIV_EP1','HMMWV_M1035_DES_EP1','HMMWV_Ambulance','HMMWV_Ambulance_CZ_DES_EP1','HMMWV_DZ','HMMWV_DES_EP1','Civcar','Civcarbu','civcarbl','Civcarre','Civcarge','Civcarwh','Civcarsl','hilux1_civil_3_open_EP1','datsun1_civil_3_open_DZE','hilux1_civil_1_open_DZE','datsun1_civil_2_covered_DZE','datsun1_civil_1_open_DZE','hilux1_civil_2_covered_DZE','Skoda','SkodaBlue','SkodaGreen','SkodaRed','VolhaLimo_TK_CIV_EP1','Volha_1_TK_CIV_EP1','Volha_2_TK_CIV_EP1','VWGolf','car_hatchback','car_sedan','GLT_M300_LT','GLT_M300_ST','Lada1','Lada1_TK_CIV_EP1','Lada2','Lada2_TK_CIV_EP1','LadaLM','SUV_TK_CIV_EP1','SUV_Blue','SUV_Charcoal','SUV_Green','SUV_Orange','SUV_Pink','SUV_Red','SUV_Silver','SUV_White','SUV_Yellow','SUV_Camo','UAZ_CDF','UAZ_INS','UAZ_RU','UAZ_Unarmed_TK_CIV_EP1','UAZ_Unarmed_TK_EP1','UAZ_Unarmed_UN_EP1');

-- ----------------------------
-- Delete server spawned vehicles.
-- ----------------------------
DELETE FROM `object_data`
WHERE `LastUpdated` < DATE_SUB(CURRENT_TIMESTAMP, INTERVAL 3 DAY)
AND `CharacterID` = '0'
AND `Classname`
NOT REGEXP 'barrier|storage|shed|bench|wall|floor|fence|pump|wood|hrescue|stick|pole|generator|panel|house|rack|bag|stand|barrel|canvas|wire|hedgehog|net|trap|ramp|fort|sand|scaffold|nest|killhouse|villa|castle|pub|shelter|stodola|garage|MBG|warehouse|sara';

-- ----------------------------
-- Delete all vehicles not touched in 10 days.
-- ----------------------------
DELETE FROM `object_data`
WHERE `LastUpdated` < DATE_SUB(CURRENT_TIMESTAMP, INTERVAL 10 DAY)
AND `Classname`
NOT REGEXP 'barrier|storage|shed|bench|wall|floor|fence|pump|wood|hrescue|stick|pole|generator|panel|house|rack|bag|stand|barrel|canvas|wire|hedgehog|net|trap|ramp|fort|sand|scaffold|nest|killhouse|villa|castle|pub|shelter|stodola|garage|MBG|warehouse|sara';

-- ----------------------------
-- Unlock purchased, inactive vehicles.
-- ----------------------------
UPDATE `object_data`
SET `CharacterID` = 0,`LastUpdated` = `LastUpdated`
WHERE `LastUpdated` < DATE_SUB(CURRENT_TIMESTAMP, INTERVAL 7 DAY)
AND `CharacterID` > 0
AND `Classname`
NOT REGEXP 'barrier|storage|shed|bench|wall|floor|fence|pump|wood|hrescue|stick|pole|generator|panel|house|rack|bag|stand|barrel|canvas|wire|hedgehog|net|trap|ramp|fort|sand|scaffold|nest|killhouse|villa|castle|pub|shelter|stodola|garage|MBG|warehouse|sara';

-- ----------------------------
-- Unlock vehicle's with no key.
-- ----------------------------
UPDATE `Object_DATA`
SET `Object_DATA`.`CharacterID` = 0,`LastUpdated` = `LastUpdated`
WHERE `Object_DATA`.`CharacterID` <> 0
AND`Object_DATA`.`CharacterID` <= 12500
AND`Object_DATA`.`Classname` NOT LIKE 'Tent%'
AND`Object_DATA`.`Classname` NOT LIKE '%Locked'
AND`Object_DATA`.`Classname` NOT LIKE 'Land%'
AND`Object_DATA`.`Classname` NOT LIKE 'Cinder%'
AND`Object_DATA`.`Classname` NOT LIKE 'Wood%'
AND`Object_DATA`.`Classname` NOT LIKE 'Metal%'
AND`Object_DATA`.`Classname` NOT LIKE '%Storage%'
AND`Object_DATA`.`Classname` NOT IN ('OutHouse_DZ', 'GunRack_DZ', 'WorkBench_DZ', 'Sandbag1_DZ', 'FireBarrel_DZ', 'DesertCamoNet_DZ', 'StickFence_DZ', 'LightPole_DZ', 'DeerStand_DZ', 'ForestLargeCamoNet_DZ', 'Plastic_Pole_EP1_DZ', 'Hedgehog_DZ', 'FuelPump_DZ', 'Fort_RazorWire', 'SandNest_DZ', 'ForestCamoNet_DZ', 'Fence_corrugated_DZ', 'CanvasHut_DZ', 'Generator_DZ')
AND FindVehicleKeysCount(Object_DATA.CharacterID) = 0;

-- --------------------------------------------------------------------------------
-- -------------------------------Player Maintenance-------------------------------
-- --------------------------------------------------------------------------------

-- ----------------------------
-- Delete player login data.
-- ----------------------------
DELETE FROM `player_login`;

-- ----------------------------
-- Delete dead characters.
-- ----------------------------
DELETE from Character_data
USING Character_data, Character_data as tempchartable
WHERE (Character_data.PlayerUID = tempchartable.PlayerUID)
AND (NOT Character_data.alive = tempchartable.alive)
AND (Character_data.alive = 0);

-- ----------------------------
-- Delete characters inactive for 30 days.
-- ----------------------------
DELETE FROM Character_DATA 
WHERE LastLogin < NOW() - INTERVAL 30 DAY;