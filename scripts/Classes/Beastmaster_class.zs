import mods.compatskills.SkillCreator.createSkill;
import mods.compatskills.Skill;
import crafttweaker.item.IItemStack as IItemStack;

#Beastmaster tab
val warrior=mods.compatskills.SkillCreator.createSkill("beastmaster", "textures/blocks/stonebrick.png");
warrior.name="Beastmaster";
warrior.setRankIcon(0, "reskillable:textures/beastmaster.png");
warrior.setEnabled(true);
warrior.setBaseLevelCost(0);
warrior.setLevelCap(10);
warrior.setLevelStaggering(["1|7"]);
warrior.setSkillPointInterval(1);

#Traits
val Tamer=mods.compatskills.TraitCreator.createTrait("tamer", 2, 0, "compatskills:beastmaster", 2,  "trait|compatskills:beastmaster");
Tamer.name = "Tamer instinct";
Tamer.description = "Allow to tame some creatures.";
Tamer.icon = "reskillable:textures/tamer.png";

val Beast=mods.compatskills.TraitCreator.createTrait("beast", 2, 1, "compatskills:beastmaster", 3,  "trait|compatskills:tamer");
Beast.name = "Beast tamer";
Beast.description = "Allow to tame greater monsters.";
Beast.icon = "reskillable:textures/beast.png";

val Dragon=mods.compatskills.TraitCreator.createTrait("dragonraider", 2, 2, "compatskills:beastmaster", 3,  "trait|compatskills:beast");
Dragon.name = "Dragon tamer";
Dragon.description = "Allow to tame dragons.";
Dragon.icon = "reskillable:textures/dragon.png";

val Summon=mods.compatskills.TraitCreator.createTrait("summoner", 3, 0, "compatskills:beastmaster", 3,  "trait|compatskills:beastmaster");
Summon.name = "Summoner";
Summon.description = "Allow to summon creatures.";
Summon.icon = "reskillable:textures/summon.png";

val Lances=mods.compatskills.TraitCreator.createTrait("husar", 1, 0, "compatskills:beastmaster", 1,  "trait|compatskills:beastmaster");
Lances.name = "Husar";
Lances.description = "Allow to use lances.";
Lances.icon = "reskillable:textures/assad.png";