-- 先按数据库问题处理 源码中阵营也有问题和托雷克公用一个 导致必然有一个任务不对
UPDATE `gameobject_template` set `faction` =  0 and `flags` = 2 where  `entry` = 178147;

-- 碎木哨岗对话语序不对
UPDATE `smart_scripts` set `link` =  0 where  `entryorguid` = 177964;

-- 对比原始数据库和tuice_放心使用:)
UPDATE `creature_template` SET `difficulty_entry_1` = 0 Where `entry` = 34918;
UPDATE `creature_template` SET `difficulty_entry_1` = 0 Where `entry` = 34919; 
UPDATE `creature_template` SET `difficulty_entry_1` = 0 Where `entry` = 34924; 

UPDATE `creature_template` SET `faction_A` = 974 Where `entry` = 36830; 
UPDATE `creature_template` SET `faction_H` = 974 Where `entry` = 36830; 
UPDATE `creature_template` SET `faction_A` = 1801 Where `entry` = 37034; 
UPDATE `creature_template` SET `faction_H` = 1801 Where `entry` = 37034; 
UPDATE `creature_template` SET `faction_A` = 74 Where `entry` = 18176; 
UPDATE `creature_template` SET `faction_H` = 74 Where `entry` = 18176; 
UPDATE `creature_template` SET `faction_A` = 74 Where `entry` = 18179; 
UPDATE `creature_template` SET `faction_H` = 74 Where `entry` = 18179; 
UPDATE `creature_template` SET `faction_A` = 1770 Where `entry` = 37809; 
UPDATE `creature_template` SET `faction_H` = 1770 Where `entry` = 37809; 
UPDATE `creature_template` SET `faction_A` = 83 Where `entry` = 35405; 
UPDATE `creature_template` SET `faction_H` = 83 Where `entry` = 35405; 
UPDATE `creature_template` SET `faction_A` = 190 Where `entry` = 30794; 
UPDATE `creature_template` SET `faction_H` = 190 Where `entry` = 30794; 
UPDATE `creature_template` SET `faction_A` = 14 Where `entry` = 22643; 
UPDATE `creature_template` SET `faction_H` = 14 Where `entry` = 22643; 
UPDATE `creature_template` SET `faction_A` = 534 Where `entry` = 37604; 
UPDATE `creature_template` SET `faction_H` = 534 Where `entry` = 37604; 
UPDATE `creature_template` SET `faction_A` = 1215 Where `entry` = 37320; 
UPDATE `creature_template` SET `faction_H` = 1215 Where `entry` = 37320; 
UPDATE `creature_template` SET `faction_A` = 1215 Where `entry` = 37401; 
UPDATE `creature_template` SET `faction_H` = 1215 Where `entry` = 37401; 
UPDATE `creature_template` SET `faction_A` = 1215 Where `entry` = 37479; 
UPDATE `creature_template` SET `faction_H` = 1215 Where `entry` = 37479; 
UPDATE `creature_template` SET `faction_A` = 1215 Where `entry` = 37481; 
UPDATE `creature_template` SET `faction_H` = 1215 Where `entry` = 37481; 
UPDATE `creature_template` SET `faction_A` = 1215 Where `entry` = 37305; 
UPDATE `creature_template` SET `faction_H` = 1215 Where `entry` = 37305; 
UPDATE `creature_template` SET `faction_A` = 1215 Where `entry` = 37485; 
UPDATE `creature_template` SET `faction_H` = 1215 Where `entry` = 37485; 
UPDATE `creature_template` SET `faction_A` = 1215 Where `entry` = 37399; 
UPDATE `creature_template` SET `faction_H` = 1215 Where `entry` = 37399; 
UPDATE `creature_template` SET `faction_A` = 1215 Where `entry` = 37486; 
UPDATE `creature_template` SET `faction_H` = 1215 Where `entry` = 37486; 
UPDATE `creature_template` SET `faction_A` = 1215 Where `entry` = 37318; 
UPDATE `creature_template` SET `faction_H` = 1215 Where `entry` = 37318; 
UPDATE `creature_template` SET `faction_A` = 1215 Where `entry` = 37373; 
UPDATE `creature_template` SET `faction_H` = 1215 Where `entry` = 37373; 
UPDATE `creature_template` SET `faction_A` = 1217 Where `entry` = 37315; 
UPDATE `creature_template` SET `faction_H` = 1217 Where `entry` = 37315; 
UPDATE `creature_template` SET `faction_A` = 1217 Where `entry` = 37480; 
UPDATE `creature_template` SET `faction_H` = 1217 Where `entry` = 37480; 
UPDATE `creature_template` SET `faction_A` = 1217 Where `entry` = 37483; 
UPDATE `creature_template` SET `faction_H` = 1217 Where `entry` = 37483; 
UPDATE `creature_template` SET `faction_A` = 1217 Where `entry` = 37484; 
UPDATE `creature_template` SET `faction_H` = 1217 Where `entry` = 37484;
UPDATE `creature_template` SET `faction_A` = 1217 Where `entry` = 37420; 
UPDATE `creature_template` SET `faction_H` = 1217 Where `entry` = 37420; 
UPDATE `creature_template` SET `faction_A` = 1217 Where `entry` = 37242; 
UPDATE `creature_template` SET `faction_H` = 1217 Where `entry` = 37242; 
UPDATE `creature_template` SET `faction_A` = 1217 Where `entry` = 37349; 
UPDATE `creature_template` SET `faction_H` = 1217 Where `entry` = 37349; 
UPDATE `creature_template` SET `faction_A` = 1217 Where `entry` = 37344; 
UPDATE `creature_template` SET `faction_H` = 1217 Where `entry` = 37344; 
UPDATE `creature_template` SET `faction_A` = 1217 Where `entry` = 37427; 
UPDATE `creature_template` SET `faction_H` = 1217 Where `entry` = 37427; 
UPDATE `creature_template` SET `faction_A` = 1217 Where `entry` = 37348; 
UPDATE `creature_template` SET `faction_H` = 1217 Where `entry` = 37348;
UPDATE `creature_template` SET `faction_A` = 85 Where `entry` = 37346; 
UPDATE `creature_template` SET `faction_H` = 85 Where `entry` = 37346; 
UPDATE `creature_template` SET `faction_A` = 85 Where `entry` = 37384; 
UPDATE `creature_template` SET `faction_H` = 85 Where `entry` = 37384; 
UPDATE `creature_template` SET `faction_A` = 85 Where `entry` = 37451; 
UPDATE `creature_template` SET `faction_H` = 85 Where `entry` = 37451; 
UPDATE `creature_template` SET `faction_A` = 29 Where `entry` = 37335; 
UPDATE `creature_template` SET `faction_H` = 29 Where `entry` = 37335; 
UPDATE `creature_template` SET `faction_A` = 29 Where `entry` = 37268; 
UPDATE `creature_template` SET `faction_H` = 29 Where `entry` = 37268; 
UPDATE `creature_template` SET `faction_A` = 29 Where `entry` = 37364; 
UPDATE `creature_template` SET `faction_H` = 29 Where `entry` = 37364; 
UPDATE `creature_template` SET `faction_A` = 32 Where `entry` = 37331; 
UPDATE `creature_template` SET `faction_H` = 32 Where `entry` = 37331; 

UPDATE `creature_template` SET `faction_A` = 26 Where `entry` = 37473; 
UPDATE `creature_template` SET `faction_H` = 26 Where `entry` = 37473; 
UPDATE `creature_template` SET `faction_A` = 59 Where `entry` = 37340; 
UPDATE `creature_template` SET `faction_H` = 59 Where `entry` = 37340; 
 
UPDATE `creature_template` SET `faction_A` = 26 Where `entry` = 37469; 
UPDATE `creature_template` SET `faction_H` = 26 Where `entry` = 37469; 
UPDATE `creature_template` SET `faction_A` = 26 Where `entry` = 37470; 
UPDATE `creature_template` SET `faction_H` = 26 Where `entry` = 37470; 
UPDATE `creature_template` SET `faction_A` = 59 Where `entry` = 37366; 
UPDATE `creature_template` SET `faction_H` = 59 Where `entry` = 37366; 
UPDATE `creature_template` SET `faction_A` = 514 Where `entry` = 37404; 
UPDATE `creature_template` SET `faction_H` = 514 Where `entry` = 37404; 
UPDATE `creature_template` SET `faction_A` = 514 Where `entry` = 37402; 
UPDATE `creature_template` SET `faction_H` = 514 Where `entry` = 37402; 
UPDATE `creature_template` SET `faction_A` = 39 Where `entry` = 37475; 
UPDATE `creature_template` SET `faction_H` = 39 Where `entry` = 37475; 
UPDATE `creature_template` SET `faction_A` = 1334 Where `entry` = 37416; 
UPDATE `creature_template` SET `faction_H` = 1334 Where `entry` = 37416; 
UPDATE `creature_template` SET `faction_A` = 32 Where `entry` = 37234; 
UPDATE `creature_template` SET `faction_H` = 32 Where `entry` = 37234; 
UPDATE `creature_template` SET `faction_A` = 84 Where `entry` = 37236; 
UPDATE `creature_template` SET `faction_H` = 84 Where `entry` = 37236; 
UPDATE `creature_template` SET `faction_A` = 83 Where `entry` = 37323; 
UPDATE `creature_template` SET `faction_H` = 83 Where `entry` = 37323; 
UPDATE `creature_template` SET `faction_A` = 32 Where `entry` = 37267; 
UPDATE `creature_template` SET `faction_H` = 32 Where `entry` = 37267; 
UPDATE `creature_template` SET `faction_A` = 11 Where `entry` = 37383; 
UPDATE `creature_template` SET `faction_H` = 11 Where `entry` = 37383; 
UPDATE `creature_template` SET `faction_A` = 11 Where `entry` = 37450; 
UPDATE `creature_template` SET `faction_H` = 11 Where `entry` = 37450; 
UPDATE `creature_template` SET `faction_A` = 11 Where `entry` = 37250; 
UPDATE `creature_template` SET `faction_H` = 11 Where `entry` = 37250; 
UPDATE `creature_template` SET `faction_A` = 877 Where `entry` = 37370; 
UPDATE `creature_template` SET `faction_H` = 877 Where `entry` = 37370; 
UPDATE `creature_template` SET `faction_A` = 1594 Where `entry` = 37240; 
UPDATE `creature_template` SET `faction_H` = 1594 Where `entry` = 37240; 
UPDATE `creature_template` SET `faction_A` = 57 Where `entry` = 37281; 
UPDATE `creature_template` SET `faction_H` = 57 Where `entry` = 37281; 
UPDATE `creature_template` SET `faction_A` = 1214 Where `entry` = 37296; 
UPDATE `creature_template` SET `faction_H` = 1214 Where `entry` = 37296; 
UPDATE `creature_template` SET `faction_A` = 1534 Where `entry` = 37285; 
UPDATE `creature_template` SET `faction_H` = 1534 Where `entry` = 37285; 
UPDATE `creature_template` SET `faction_A` = 1534 Where `entry` = 37287; 
UPDATE `creature_template` SET `faction_H` = 1534 Where `entry` = 37287; 
UPDATE `creature_template` SET `faction_A` = 1534 Where `entry` = 37327; 
UPDATE `creature_template` SET `faction_H` = 1534 Where `entry` = 37327; 
UPDATE `creature_template` SET `faction_A` = 1534 Where `entry` = 37407; 
UPDATE `creature_template` SET `faction_H` = 1534 Where `entry` = 37407; 
UPDATE `creature_template` SET `VehicleId` = 599 Where `entry` = 36939; 
UPDATE `creature_template` SET `type_flags` = 268435564 Where `entry` = 39166; 
UPDATE `creature_template` SET `type_flags` = 268435564 Where `entry` = 39167; 
UPDATE `creature_template` SET `type_flags` = 268435564 Where `entry` = 39168; 
UPDATE `creature_template` SET `type_flags` = 4168 Where `entry` = 35405; 
UPDATE `creature_template` SET `type_flags` = 0 Where `entry` = 25388; 
UPDATE `creature_template` SET `type_flags` = 4096 Where `entry` = 25338; 
UPDATE `creature_template` SET `type_flags` = 0 Where `entry` = 30397; 
UPDATE `creature_template` SET `unit_class` = 4 Where `entry` = 36357; 

UPDATE `creature_template` SET `exp` = 2 Where `entry` = 37721; 
UPDATE `creature_template` SET `exp` = 2 Where `entry` = 38129; 
UPDATE `creature_template` SET `exp` = 2 Where `entry` = 38701; 
UPDATE `creature_template` SET `exp` = 2 Where `entry` = 38702; 

UPDATE `creature_template` SET `faction_A` = 59 Where `entry` = 37337; 
UPDATE `creature_template` SET `faction_H` = 59 Where `entry` = 37337;
UPDATE `creature_template` SET `faction_A` = 32 Where `entry` = 37251; 
UPDATE `creature_template` SET `faction_H` = 32 Where `entry` = 37251; 
UPDATE `creature_template` SET `faction_A` = 74 Where `entry` = 19897; 
UPDATE `creature_template` SET `faction_H` = 74 Where `entry` = 19897; 
UPDATE `creature_template` SET `faction_A` = 74 Where `entry` = 19899; 
UPDATE `creature_template` SET `faction_H` = 74 Where `entry` = 19899; 

UPDATE `spelldifficulty_dbc` SET `spellid1` = 63981 Where `id` = 62166; 

