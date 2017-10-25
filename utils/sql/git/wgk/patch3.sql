# WGK Patch 3
# 10.23.17

# Remove POK books
DELETE FROM doors WHERE name = 'POKTELE500' and dest_zone = 'poknowledge';

# Lock zone access to Kunark
update zone set min_status = 200 where expansion > 2;

# Remove Nexus Scions
DELETE spawnentry FROM spawnentry
join spawn2 on spawn2.`spawngroupID`=spawnentry.`spawngroupID`
join spawngroup on spawnentry.`spawngroupID`=spawngroup.`id`
join npc_types on spawnentry.`npcID`=npc_types.`id`
where npc_types.name like '%Nexus_Scion%';
