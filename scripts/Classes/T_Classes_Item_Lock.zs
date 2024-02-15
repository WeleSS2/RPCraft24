import mods.compatskills.SkillCreator.createSkill;
import mods.compatskills.Skill;
import crafttweaker.item.IItemStack as IItemStack;

#Spells tab
val spells=mods.compatskills.SkillCreator.createSkill("spells", "thaumcraft:textures/gui/gui_research_back_4.jpg");
spells.name="Spells";
spells.setRankIcon(0, "minecraft:textures/iron_ingot.png");
spells.setEnabled(true);
spells.setBaseLevelCost(0);
spells.setLevelCap(32);
spells.setRankIcon(0, "minecraft:textures/spells0.png");
spells.setRankIcon(2, "minecraft:textures/spells1.png");
spells.setRankIcon(4, "minecraft:textures/spells3.png");
spells.setRankIcon(6, "minecraft:textures/spells2.png");
spells.setRankIcon(8, "minecraft:textures/spells4.png");
spells.setLevelStaggering(["1|1","10|2"]);
spells.setSkillPointInterval(1);


#Spells
#Apprentice
val m_app_1=mods.compatskills.TraitCreator.createTrait("e2magic", 0, 0, "compatskills:spells", 2, "or|[trait|compatskills:mage]~[trait|compatskills:emagictraining]");
m_app_1.name = "Apprentice elemental magic";
m_app_1.description = "Allow casting apprentice tier elemental spells";
m_app_1.icon="ebwizardry:textures/wand_apprentice.png";
val m_app_2=mods.compatskills.TraitCreator.createTrait("h2magic", 2, 0, "compatskills:spells", 2, "or|[trait|compatskills:mage]~[trait|compatskills:hmagictraining]");
m_app_2.name = "Apprentice healing magic";
m_app_2.description = "Allow casting apprentice tier healing spells";
m_app_2.icon= "ebwizardry:textures/wand_apprentice_healing.png";
val m_app_3=mods.compatskills.TraitCreator.createTrait("s2magic", 3, 0, "compatskills:spells", 2, "or|[trait|compatskills:mage]~[trait|compatskills:smagictraining]");
m_app_3.name = "Apprentice sorcery magic";
m_app_3.description = "Allow casting apprentice tier sorcery spells";
m_app_3.icon= "ebwizardry:textures/wand_apprentice_sorcery.png";
val m_app_4=mods.compatskills.TraitCreator.createTrait("n2magic", 4, 0, "compatskills:spells", 2, "or|[trait|compatskills:mage]~[trait|compatskills:nmagictraining]");
m_app_4.name = "Apprentice necromancy magic";
m_app_4.description = "Allow casting apprentice tier necronamcy spells";
m_app_4.icon= "ebwizardry:textures/wand_apprentice_necromancy.png";

#Advanced
val m_adv_5=mods.compatskills.TraitCreator.createTrait("e3magic", 0, 1, "compatskills:spells", 6, "trait|compatskills:mage","trait|compatskills:e2magic");
m_adv_5.name = "Advanced elemental magic";
m_adv_5.description = "Allow casting advanced tier elemental spells";
m_adv_5.icon= "ebwizardry:textures/items/wand_advanced.png";
val m_adv_6=mods.compatskills.TraitCreator.createTrait("h3magic", 2, 1, "compatskills:spells", 10, "trait|compatskills:mage","trait|compatskills:h2magic");
m_adv_6.name = "Advanced healing magic";
m_adv_6.description = "Allow casting advanced tier healing spells";
m_adv_6.icon= "ebwizardry:textures/items/wand_advanced_healing.png";
val m_adv_7=mods.compatskills.TraitCreator.createTrait("s3magic", 3, 1, "compatskills:spells", 10, "trait|compatskills:mage","trait|compatskills:s2magic");
m_adv_7.name = "Advanced sorcery magic";
m_adv_7.description = "Allow casting advanced tier sorcery spells";
m_adv_7.icon= "ebwizardry:textures/items/wand_advanced_sorcery.png";
val m_adv_8=mods.compatskills.TraitCreator.createTrait("n3magic", 4, 1, "compatskills:spells", 10, "trait|compatskills:mage","trait|compatskills:n2magic");
m_adv_8.name = "Advanced necronamcy magic";
m_adv_8.description = "Allow casting advanced tier necronamcy spells";
m_adv_8.icon= "ebwizardry:textures/items/wand_advanced_necromancy.png";

#Master
val m_mas_9=mods.compatskills.TraitCreator.createTrait("f4magic", 0, 2, "compatskills:spells", 8, "trait|compatskills:mage","trait|compatskills:e3magic");
m_mas_9.name = "Master fire elemental magic";
m_mas_9.description = "Allow casting master tier elemental spells";
m_mas_9.icon= "ebwizardry:textures/items/wand_master_fire.png";
val m_mas_10=mods.compatskills.TraitCreator.createTrait("i4magic", 0, 3, "compatskills:spells", 8, "trait|compatskills:mage","trait|compatskills:e3magic");
m_mas_10.name = "Master ice elemental magic";
m_mas_10.description = "Allow casting master tier elemental spells";
m_mas_10.icon= "ebwizardry:textures/items/wand_master_ice.png";
val m_mas_11=mods.compatskills.TraitCreator.createTrait("l4magic", 1, 2, "compatskills:spells", 8, "trait|compatskills:mage","trait|compatskills:e3magic");
m_mas_11.name = "Master lightning elemental magic";
m_mas_11.description = "Allow casting master tier elemental spells";
m_mas_11.icon= "ebwizardry:textures/items/wand_master_lightning.png";
val m_mas_12=mods.compatskills.TraitCreator.createTrait("e4magic", 1, 3, "compatskills:spells", 12, "trait|compatskills:mage","trait|compatskills:e3magic");
m_mas_12.name = "Master earth elemental magic";
m_mas_12.description = "Allow casting master tier elemental spells";
m_mas_12.icon= "ebwizardry:textures/items/wand_master_earth.png";
val m_mas_13=mods.compatskills.TraitCreator.createTrait("h4magic", 2, 2, "compatskills:spells", 12, "trait|compatskills:mage","trait|compatskills:h3magic");
m_mas_13.name = "Master healing magic";
m_mas_13.description = "Allow casting master tier healing spells";
m_mas_13.icon= "ebwizardry:textures/items/wand_master_healing.png";
val m_mas_14=mods.compatskills.TraitCreator.createTrait("s4magic", 3, 2, "compatskills:spells", 12, "trait|compatskills:mage","trait|compatskills:s3magic");
m_mas_14.name = "Master sorcery magic";
m_mas_14.description = "Allow casting master tier sorcery spells";
m_mas_14.icon= "ebwizardry:textures/items/wand_master_sorcery.png";
val m_mas_15=mods.compatskills.TraitCreator.createTrait("n4magic", 4, 2, "compatskills:spells", 12, "trait|compatskills:mage","trait|compatskills:n3magic");
m_mas_15.name = "Master necromancy magic";
m_mas_15.description = "Allow casting master tier necronamcy spells";
m_mas_15.icon= "ebwizardry:textures/items/wand_master_necromancy.png";

val bas1=mods.compatskills.TraitCreator.createTrait("stoneminer", 2, 0, "compatskills:tools", 2, "trait|compatskills:stone_bas");
bas1.name = "Stone Warrior";
bas1.description = "Everything here will be soon ready, but not now.";
bas1.icon= "minecraft:textures/blocks/stone.png";
#val gam1=mods.compatskills.TraitCreator.createTrait("Coal", 1, 0, "compatskills:tools", 1, "trait|compatskills:coal");
#gam1.name = "";
#gam1.description = "";
#gam1.icon= "minecraft:textures/items/.png";





/*
#gunner
val engineer=mods.compatskills.SkillCreator.createSkill("Enginger", "textures/blocks/stonebrick.png");
engineer.name="Engineer";
engineer.setRankIcon(0, "minecraft:textures/items/repeater.png");
engineer.setEnabled(true);
engineer.setBaseLevelCost(0);
engineer.setLevelCap(10);
engineer.setLevelStaggering(["1|7"]);
engineer.setSkillPointInterval(1);


val t1_guns=mods.compatskills.TraitCreator.createTrait("guns_t1", 0, 0, "compatskills:Enginger", 2, "trait|compatskills:tech" );
t1_guns.name = "Basic guns";
t1_guns.description = "I did it! I created a working guns!";
t1_guns.icon= "minecraft:textures/t1.png";
val t2_guns=mods.compatskills.TraitCreator.createTrait("guns_t2", 0, 1, "compatskills:Enginger", 2, "trait|compatskills:guns_t1" );
t2_guns.name = "Sniper Rifle?";
t2_guns.description = "After tests i know what i need to make a better guns, netherite";
t2_guns.icon= "minecraft:textures/sniper.png";
val t3_guns=mods.compatskills.TraitCreator.createTrait("guns_t3", 0, 2, "compatskills:Enginger", 2, "trait|compatskills:guns_t2" );
t3_guns.name = "Upgrade everythnig!";
t3_guns.description = "Give me a good source of power, and i'll build much stronger guns!";
t3_guns.icon= "minecraft:textures/t3.png";
val t4_guns=mods.compatskills.TraitCreator.createTrait("guns_t4", 0, 3, "compatskills:Enginger", 2, "trait|compatskills:guns_t3" );
t4_guns.name = "Incredible";
t4_guns.description = "With dragon steel i can build everything!";
t4_guns.icon= "minecraft:textures/t4g.png";
val t4_bom_guns=mods.compatskills.TraitCreator.createTrait("guns_t4_bom", 1, 3, "compatskills:Enginger", 2, "trait|compatskills:guns_t4" );
t4_bom_guns.name = "Bigger gun";
t4_bom_guns.description = "Maybe i should build something bigger?";
t4_bom_guns.icon= "minecraft:textures/t4b.png";

val basic_machine=mods.compatskills.TraitCreator.createTrait("flying_machine_t1", 2, 0, "compatskills:Enginger", 2, "trait|compatskills:tech" );
basic_machine.name = "It's working";
basic_machine.description = "I don't know why, but that's work!";
basic_machine.icon= "minecraft:textures/plane1.png";
val advanced_machine=mods.compatskills.TraitCreator.createTrait("flying_machine_t2", 2, 1, "compatskills:Enginger", 4, "trait|compatskills:flying_machine_t1" );
advanced_machine.name = "Improved Version";
advanced_machine.description = "Now i can build someting much better!";
advanced_machine.icon= "minecraft:textures/plane2.png";
val ship_weapon_1=mods.compatskills.TraitCreator.createTrait("ship_weapon_t_1", 3, 1, "compatskills:Enginger", 2, "and|[trait|compatskills:tech]~[trait|compatskills:flying_machine_t2]" );
ship_weapon_1.name = "Can i use it?";
ship_weapon_1.description = "I can build a cannons on my flying ship";
ship_weapon_1.icon= "minecraft:textures/cannon.png";

#mods.compatskills.Requirement.addRequirement(IItemStack item, String... locked)
#as IItemStack[];
#as string[];

*/
/* */
