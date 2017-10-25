# WGK Patch 1
# 10.16.17

# Change Noxious Spider to 40%
UPDATE `spawnentry` SET `chance`='25' WHERE `spawngroupID`='7110' AND `npcID`='66021';
UPDATE `spawnentry` SET `chance`='75' WHERE `spawngroupID`='7110' AND `npcID`='66019';

# Change Noxious Spider to 40%
UPDATE `spawnentry` SET `chance`='40' WHERE `spawngroupID`='4567' AND `npcID`='32015';

# Add Lava Duct Crawler to Noxius Spider spawngroup
INSERT INTO `spawnentry` (`spawngroupID`, `npcID`, `chance`) VALUES (4567, 32028, 60);

# Delete Fabled mobs
DELETE spawnentry FROM spawnentry
join spawn2 on spawn2.`spawngroupID`=spawnentry.`spawngroupID`
join spawngroup on spawnentry.`spawngroupID`=spawngroup.`id`
join npc_types on spawnentry.`npcID`=npc_types.`id`
where npc_types.`name` like '%fabled%'

# Delete A Dark Vision from griegsend
DELETE spawnentry FROM spawnentry
join spawn2 on spawn2.`spawngroupID`=spawnentry.`spawngroupID`
join spawngroup on spawnentry.`spawngroupID`=spawngroup.`id`
join npc_types on spawnentry.`npcID`=npc_types.`id`
where npc_types.`name` like '%vision%' and zone='griegsend'

# Delete A Dark Sending from griegsend
DELETE spawnentry FROM spawnentry
join spawn2 on spawn2.`spawngroupID`=spawnentry.`spawngroupID`
join spawngroup on spawnentry.`spawngroupID`=spawngroup.`id`
join npc_types on spawnentry.`npcID`=npc_types.`id`
where npc_types.`name` like '%sending%' and zone='griegsend'

# Delete defiant items
DELETE lootdrop_entries FROM lootdrop_entries
join items on items.id=lootdrop_entries.`item_id`
where items.Name like '%defiant%'
