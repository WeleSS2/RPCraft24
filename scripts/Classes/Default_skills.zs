import mods.compatskills.SkillCreator.createSkill;
import mods.compatskills.Skill;
import crafttweaker.item.IItemStack as IItemStack;

#Some changes
<skill:reskillable:building>.setEnabled(false);
<skill:reskillable:gathering>.setEnabled(false);
<skill:reskillable:mining>.setEnabled(false);
<skill:reskillable:farming>.setEnabled(false);

#Tools tab (sum farming, mining, gathering and building)
val tools=mods.compatskills.SkillCreator.createSkill("tools", "textures/blocks/stonebrick.png");
tools.name="Tools";
tools.setRankIcon(0, "minecraft:textures/items/wood_pickaxe.png");
tools.setRankIcon(1, "minecraft:textures/items/stone_pickaxe.png");
tools.setRankIcon(2, "minecraft:textures/items/iron_pickaxe.png");
tools.setRankIcon(4, "minecraft:textures/items/diamond_pickaxe.png");
tools.setRankIcon(6, "iceandfire:textures/items/dragonsteel_fire_pickaxe.png");
tools.setEnabled(true);
tools.setBaseLevelCost(0);
tools.setLevelCap(32);
tools.setLevelStaggering(["1|1"]);
tools.setSkillPointInterval(1);
