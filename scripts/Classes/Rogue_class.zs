import mods.compatskills.SkillCreator.createSkill;
import mods.compatskills.Skill;
import crafttweaker.item.IItemStack as IItemStack;

#Rogue tab
val warrior=mods.compatskills.SkillCreator.createSkill("rogue", "textures/blocks/stonebrick.png");
warrior.name="Rogue";
warrior.setRankIcon(0, "reskillable:textures/rogue.png");
warrior.setEnabled(true);
warrior.setBaseLevelCost(0);
warrior.setLevelCap(10);
warrior.setLevelStaggering(["1|7"]);
warrior.setSkillPointInterval(1);

#Traits
val Archery = mods.compatskills.TraitCreator.createTrait("archery", 0, 0, "compatskills:rogue", 1);
Archery.name = "Archer";
Archery.description = "Archery - allow to use better bows and crossbows.";
Archery.icon = "reskillable:textures/archery.png";

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
