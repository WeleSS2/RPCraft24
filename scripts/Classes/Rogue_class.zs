import mods.compatskills.SkillCreator.createSkill;
import mods.compatskills.Skill;
import crafttweaker.item.IItemStack as IItemStack;

#Rogue tab
val rogue=mods.compatskills.SkillCreator.createSkill("rogue", "textures/blocks/stonebrick.png");
rogue.name="Rogue";
rogue.setRankIcon(0, "reskillable:textures/rogue.png");
rogue.setEnabled(true);
rogue.setBaseLevelCost(0);
rogue.setLevelCap(10);
rogue.setLevelStaggering(["1|7"]);
rogue.setSkillPointInterval(1);

#Traits
val Archery = mods.compatskills.TraitCreator.createTrait("archery", 0, 0, "compatskills:rogue", 1);
Archery.name = "Archer";
Archery.description = "Archery - allow to use better bows.";
Archery.icon = "reskillable:textures/archery.png";

val Xbow = mods.compatskills.TraitCreator.createTrait("xbow", 1, 0, "compatskills:rogue", 1);
Xbow.name = "Crossbowman";
Xbow.description = "Crossbowman - allow to use better crossbows.";
Xbow.icon = "reskillable:textures/xbow.png";

val Dagger = mods.compatskills.TraitCreator.createTrait("daggers", 4, 0, "compatskills:rogue", 1);
Dagger.name = "Assassin";
Dagger.description = "Powerful blows on backstabs using daggers.";
Dagger.icon = "reskillable:textures/dagger.png";

#Skills

#Stealth
val Stealth = mods.compatskills.TraitCreator.createTrait("stealth", 0, 1, "compatskills:rogue", 1);
Stealth.name = "Stealth strike";
Stealth.description = "Sneak attack vs target from behind using dagger deals x3 damage.";
Stealth.icon = "reskillable:textures/stealth.png";

#Cloudstep
val Weapon = mods.compatskills.TraitCreator.createTrait("stealth_cloud", 4, 1, "compatskills:rogue", 1);
Weapon.name = "Cloud step";
Weapon.description = "Gives invisibility on crouch.";
Weapon.icon = "reskillable:textures/cloud_step.png";
