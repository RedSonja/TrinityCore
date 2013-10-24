/*
Hor Fixes Including:
-Ally Chest Fix
-HC NPC Fix
-Gunship Fix (now core spawned)
*/

/*Ally Chest Fix (The normal chest was not click-able, now click-able)*/
DELETE FROM `gameobject_template` WHERE `entry`=201710;
INSERT INTO `gameobject_template` (`entry`,`type`,`displayId`,`name`,`IconName`,`castBarCaption`,`unk1`,`faction`,`flags`,`size`,`questItem1`,`questItem2`,`questItem3`,`questItem4`,`questItem5`,`questItem6`,`data0`,`data1`,`data2`,`data3`,`data4`,`data5`,`data6`,`data7`,`data8`,`data9`,`data10`,`data11`,`data12`,`data13`,`data14`,`data15`,`data16`,`data17`,`data18`,`data19`,`data20`,`data21`,`data22`,`data23`,`AIName`,`ScriptName`,`WDBVerified`) VALUES
(201710, 3, 9280, 'The Captain''s Chest', '', '', '' , 0, 0, 1, 0, 0, 0, 0, 0, 0, 57, 27985, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 12340);
/*Horde Chest Fix (fixed the HC chest on normal)*/
UPDATE `gameobject_template` SET `data1` = 27985 WHERE `entry` = 202337;
UPDATE `gameobject_template` SET `data1` = 27993 WHERE `entry` = 202212;

/*HC Npc Fix (LK Spawns)*/
DELETE FROM `creature_template` WHERE `entry` IN (37549, 37550, 37551);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`,  `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES
(37549, 0, 0, 0, 37069, 0, 30503, 0, 0, 0, 'Lumbering Abomination (HC)', '', '', 0, 80, 80, 2, 1771, 1771, 0, 1, 1.14286, 1, 1, 422, 586, 0, 642, 13, 0, 0, 1, 0, 8, 0, 0, 0, 0, 0, 345, 509, 103, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 15, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 8388624, 0, '', 12340),
(37550, 0, 0, 0, 36940, 0, 24993, 0, 0, 0, 'Raging Ghoul (HC)', '', '', 0, 80, 80, 2, 1771, 1771, 0, 2, 1.42857, 1, 0, 422, 586, 0, 642, 1, 0, 0, 1, 0, 8, 0, 0, 0, 0, 0, 345, 509, 103, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1.5, 1, 1, 0, 0, 0, 0, 0, 0, 0, 151, 1, 8388624, 0, '', 12340),
(37551, 0, 0, 0, 36941, 0, 25245, 0, 0, 0, 'Risen Witch Doctor (HC)', '', '', 0, 80, 80, 2, 1771, 1771, 0, 2, 1.42857, 1, 1, 417, 582, 0, 608, 13, 0, 0, 2, 0, 8, 0, 0, 0, 0, 0, 341, 506, 80, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 7.5, 1, 1, 0, 0, 0, 0, 0, 0, 0, 151, 1, 8388624, 0, '', 12340);

/*Gunship Fix (sets them in db so the core can spawn)*/
DELETE FROM `gameobject_template` WHERE `entry` IN (201709, 500002, 202211, 500003);
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `AIName`, `ScriptName`, `WDBVerified`) VALUES
(201709, 5, 9288, 'Gunship Stairs', '', '', '', 0, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 12340),
(202211, 5, 9289, 'Gunship Stairs', '', '', '', 0, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 12340),
(500002, 14, 9150, 'The Skybreaker', '', '', '', 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 1),
(500003, 14, 8253, 'Orgrim''s Hammer', '', '', '', 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 1);