import mods.compatskills.SkillCreator.createSkill;
import mods.compatskills.Skill;
import crafttweaker.item.IItemStack as IItemStack;

#Beastmaster tab
val warrior=mods.compatskills.SkillCreator.createSkill("hunter", "textures/blocks/stonebrick.png");
warrior.name="Beastmaster";
warrior.setRankIcon(0, "reskillable:textures/beastmaster.png");
warrior.setEnabled(true);
warrior.setBaseLevelCost(0);
warrior.setLevelCap(10);
warrior.setLevelStaggering(["1|7"]);
warrior.setSkillPointInterval(1);

#Traits
val Tamer=mods.compatskills.TraitCreator.createTrait("tamer", 4, 0, "compatskills:beastmaster", 2);
Tamer.name = "Tamer instinct";
Tamer.description = "Allow to tame some creatures.";
Tamer.icon = "reskillable:textures/tamer.png";

val Beast=mods.compatskills.TraitCreator.createTrait("beast", 4, 1, "compatskills:beastmaster", 3);
Beast.name = "Beast tamer";
Beast.description = "Allow to tame greater monsters.";
Beast.icon = "reskillable:textures/beast.png";

val Dragon=mods.compatskills.TraitCreator.createTrait("dragonraider", 4, 2, "compatskills:beastmaster", 3);
Dragon.name = "Dragon tamer";
Dragon.description = "Allow to tame dragons.";
Dragon.icon = "reskillable:textures/dragon.png";

val Summon=mods.compatskills.TraitCreator.createTrait("summoner", 4, 2, "compatskills:beastmaster", 3);
Summon.name = "Summoner";
Summon.description = "Allow to summon creatures.";
Summon.icon = "reskillable:textures/summon.png";
