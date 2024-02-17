#priority 10

import mods.compatskills.SkillCreator.createSkill;
import mods.compatskills.Skill;
import crafttweaker.item.IItemStack as IItemStack;

#Classes tab
val class=mods.compatskills.SkillCreator.createSkill("classes", "textures/blocks/stonebrick.png");
class.name="Classes";
class.setRankIcon(1, "reskillable:textures/cl0.png");
class.setRankIcon(2, "reskillable:textures/cl1.png");
class.setEnabled(true);
class.setBaseLevelCost(0);
class.setLevelCap(2);
class.setLevelStaggering(["1|5"]);
class.setSkillPointInterval(2);

#Classes traits
val Class1 = mods.compatskills.TraitCreator.createTrait("warrior", 0, 0, "compatskills:classes", 1);
Class1.name = "Path of Warrior";
Class1.description = "Uses melee weapons and heavy armor";
Class1.icon = "reskillable:textures/warrior.png";
val Class2= mods.compatskills.TraitCreator.createTrait("mage", 2, 0, "compatskills:classes", 1);
Class2.name = "Path of Mage";
Class2.description = "Can cast spells.";
Class2.icon = "reskillable:textures/mage.png";
val Class3=mods.compatskills.TraitCreator.createTrait("rogue", 1, 0, "compatskills:classes", 1);
Class3.name = "Path of Rogue";
Class3.description = "Uses bows and daggers. Stealh skills.";
Class3.icon = "reskillable:textures/rogue.png";
val Class4=mods.compatskills.TraitCreator.createTrait("alch", 3, 0, "compatskills:classes", 1);
Class4.name = "Path of Alchemist";
Class4.description = "Child of the void.";
Class4.icon = "reskillable:textures/alchemist.png";
val Class5=mods.compatskills.TraitCreator.createTrait("beastmaster", 4, 0, "compatskills:classes", 1);
Class5.name = "Path of Beastmaster";
Class5.description = "Summons monsters and beasts.";
Class5.icon ="reskillable:textures/beastmaster.png";
