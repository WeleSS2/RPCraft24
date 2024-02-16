import mods.compatskills.SkillCreator.createSkill;
import mods.compatskills.Skill;
import crafttweaker.item.IItemStack as IItemStack;

#Warrior tab
val warrior=mods.compatskills.SkillCreator.createSkill("warrior", "textures/blocks/stonebrick.png");
warrior.name="Warrior";
warrior.setRankIcon(0, "reskillable:textures/warrior.png");
warrior.setEnabled(true);
warrior.setBaseLevelCost(0);
warrior.setLevelCap(10);
warrior.setLevelStaggering(["1|7"]);
warrior.setSkillPointInterval(1);

#Traits
val Weapon = mods.compatskills.TraitCreator.createTrait("sword", 0, 0, "compatskills:warrior", 1);
Weapon.name = "Weapon master";
Weapon.description = "Weapon specjalist - allow to use better weapons.";
Weapon.icon = "reskillable:textures/weapon_specjalisation.png";

val Tank = mods.compatskills.TraitCreator.createTrait("armor", 4, 0, "compatskills:warrior", 1, "trait|compatskills:warrior");
Tank.name = "Armor master";
Tank.description = "Armor specjalist - allow to use better armors.";
Tank.icon = "reskillable:textures/armor_specjalisation.png";

val Shield = mods.compatskills.TraitCreator.createTrait("shield", 2, 0, "compatskills:warrior", 1, "trait|compatskills:warrior");
Shield.name = "Shield user";
Shield.description = "Shield specjalist - allow to use shields.";
Shield.icon = "reskillable:textures/shield_specjalisation.png";

val MagicKnight = mods.compatskills.TraitCreator.createTrait("hybridm", 2, 1, "compatskills:warrior", 1, "trait|compatskills:warrior");
MagicKnight.name = "Magic knight";
MagicKnight.description = "Hybrid of warrior and mage - allow using some spells.";
MagicKnight.icon = "reskillable:textures/magic_knight.png";

#Skills

#Weapons specialisation
val MasterWeapon = mods.compatskills.TraitCreator.createTrait("weaponMastery", 0, 2, "compatskills:warrior", 1, "trait|compatskills:melee");
MasterWeapon.name = "Weapon specialisation";
MasterWeapon.description = "Forces holder to use specyfic type of weapon.";
MasterWeapon.icon = "reskillable:textures/weapon_mastery_specialisation.png";
