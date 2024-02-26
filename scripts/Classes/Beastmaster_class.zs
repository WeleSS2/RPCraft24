import mods.compatskills.SkillCreator.createSkill;
import mods.compatskills.Skill;
import crafttweaker.item.IItemStack as IItemStack;

#Beastmaster tab
val BeastMaster=mods.compatskills.SkillCreator.createSkill("beastmaster", "textures/blocks/stonebrick.png");
BeastMaster.name="Beastmaster";
BeastMaster.setRankIcon(0, "reskillable:textures/beastmaster.png");
BeastMaster.setEnabled(true);
BeastMaster.setBaseLevelCost(0);
BeastMaster.setLevelCap(10);
BeastMaster.setLevelStaggering(["1|7"]);
BeastMaster.setSkillPointInterval(1);
mods.compatskills.VisibilityLock.addVisibilityLock(<skill:compatskills:beastmaster>, "trait|compatskills:beastmaster");

#Traits
val Tamer=mods.compatskills.TraitCreator.createTrait("tamer", 2, 0, "compatskills:beastmaster", 1,  "trait|compatskills:beastmaster");
Tamer.name = "Tamer instinct";
Tamer.description = "Allow to tame some creatures.";
Tamer.icon = "reskillable:textures/tamer.png";

val Beast=mods.compatskills.TraitCreator.createTrait("beast", 2, 1, "compatskills:beastmaster", 2,  "trait|compatskills:tamer");
Beast.name = "Beast tamer";
Beast.description = "Allow to tame greater monsters.";
Beast.icon = "reskillable:textures/beast.png";

val Dragon=mods.compatskills.TraitCreator.createTrait("dragonraider", 2, 2, "compatskills:beastmaster", 2,  "trait|compatskills:beast");
Dragon.name = "Dragon tamer";
Dragon.description = "Allow to tame dragons.";
Dragon.icon = "reskillable:textures/dragon.png";

val Summon=mods.compatskills.TraitCreator.createTrait("summoner", 3, 0, "compatskills:beastmaster", 4,  "trait|compatskills:beastmaster");
Summon.name = "Summoner";
Summon.description = "Allow to summon creatures.";
Summon.icon = "reskillable:textures/summon.png";

val Lances=mods.compatskills.TraitCreator.createTrait("husar", 0, 0, "compatskills:beastmaster", 1,  "trait|compatskills:beastmaster");
Lances.name = "Husar";
Lances.description = "Allow to use lances.";
Lances.icon = "reskillable:textures/assad.png";

val SoulLow=mods.compatskills.TraitCreator.createTrait("soulbinder", 1, 1, "compatskills:beastmaster", 1,  "trait|compatskills:tamer");
SoulLow.name = "Weak Souls";
SoulLow.description = "Allow to bing weak souls.";
SoulLow.icon = "reskillable:textures/assad.png";

val SoulMid=mods.compatskills.TraitCreator.createTrait("beastbinder", 1, 2, "compatskills:beastmaster", 1,  "trait|compatskills:beast");
SoulMid.name = "Souls";
SoulMid.description = "Allow to bind most souls.";
SoulMid.icon = "reskillable:textures/assad.png";

val SoulHigh=mods.compatskills.TraitCreator.createTrait("dragonbinder", 1, 3, "compatskills:beastmaster", 2,  "trait|compatskills:dragonraider");
SoulHigh.name = "Strong Souls";
SoulHigh.description = "Allow to bind all souls.";
SoulHigh.icon = "reskillable:textures/assad.png";


// https://rlcraft.fandom.com/wiki/Tameable_Creatures_(Lycanites)
/*
Undead 8
Amphibiany 16
Imp 16
Insect 16
Antropoidy 24
Aquatic 24
Plant 24
Worm 24
Avian 32
Beast 32
Demon 32
Dragon 32
Aberracje 32
Reptile 32
*/