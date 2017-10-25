# WGK Patch 2
# 10.22.17

# Innoruuk now spawns as his level 55 version
UPDATE `spawnentry` SET `npcID`=76007 WHERE `spawngroupID`=10026;

# Update Cazic Thule
UPDATE `npc_types` SET hp_regen_rate=89 WHERE id=72003;
UPDATE `npc_types` SET level=63 WHERE id=72003;
UPDATE `npc_types` SET mindmg=103 WHERE id=72003;
UPDATE `npc_types` SET maxdmg=500 WHERE id=72003;

# Change Veeshann to Kunark
UPDATE spawn_conditions SET value=1 WHERE zone='veeshan' AND id=1;
UPDATE spawn_conditions SET value=0 WHERE zone='veeshan' AND id=2;

# Max level = 60
UPDATE rule_values SET rule_value=60 WHERE ruleset_id=10 AND rulename='Character:MaxExpLevel';

# Archery Hit Buff
UPDATE rule_values SET rule_value=0.05 WHERE ruleset_id=10 AND rulename='Combat:ArcheryHitPenalty';
