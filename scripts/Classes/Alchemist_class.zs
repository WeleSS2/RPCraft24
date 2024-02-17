import mods.compatskills.SkillCreator.createSkill;
import mods.compatskills.Skill;
import crafttweaker.item.IItemStack as IItemStack;

#Alchemist tab
val alchemist=mods.compatskills.SkillCreator.createSkill("alchemy", "thaumcraft:textures/gui/gui_research_back_7.jpg");
alchemist.name="Alchemist";
alchemist.setRankIcon(0, "reskillable:textures/alchemist.png");
alchemist.setEnabled(true);
alchemist.setBaseLevelCost(0);
alchemist.setLevelCap(10);
alchemist.setLevelStaggering(["1|7"]);
alchemist.setSkillPointInterval(1);
mods.compatskills.VisibilityLock.addVisibilityLock(<skill:compatskills:alchemy>, "trait|compatskills:alch");

#Traits
val alch1=mods.compatskills.TraitCreator.createTrait("brewing", 2, 0, "compatskills:alchemy", 1, "trait|compatskills:alch");
alch1.name = "Brewer";
alch1.description = "Allow to brew potions";
alch1.icon= "minecraft:textures/items/brewing_stand.png";
val alch2=mods.compatskills.TraitCreator.createTrait("thaum", 2, 1, "compatskills:alchemy", 1, "trait|compatskills:brewing");
alch2.name = "Thaumaturge";
alch2.description = "Creates items with unique properties.";
alch2.icon= "thaumcraft:textures/items/thaumonomicon.png";
val alch3=mods.compatskills.TraitCreator.createTrait("vthaum", 2, 3, "compatskills:alchemy", 1, "trait|compatskills:thaum");
alch3.name = "Void Thaumaturge";
alch3.description = "Dark side of thaumaturge";
alch3.icon= "thaumcraft:textures/items/void_seed.png";

val alch4=mods.compatskills.TraitCreator.createTrait("caster", 0, 3, "compatskills:alchemy", 3, "trait|compatskills:thaum");
alch4.name = "Caster";
alch4.description = "Allow to make and use foci";
alch4.icon= "thaumcraft:textures/items/focus_3.png";
val alch5=mods.compatskills.TraitCreator.createTrait("thw", 0, 1, "compatskills:alchemy", 1, "trait|compatskills:thaum");
alch5.name = "Thaumaturge's weapons";
alch5.description = "Allow to use thaumaturge's weapons";
alch5.icon= "thaumcraft:textures/items/crimson_blade.png";
val alch6=mods.compatskills.TraitCreator.createTrait("tha", 1, 1, "compatskills:alchemy", 2, "trait|compatskills:thaum");
alch6.name = "Thaumic armor";
alch6.description = "Allow to wear thaumaturge's armors";
alch6.icon= "thaumcraft:textures/items/fortress_helm.png";
val alch7=mods.compatskills.TraitCreator.createTrait("thva", 1, 2, "compatskills:alchemy", 2, "and|[trait|compatskills:tha]~[trait|compatskills:vthaum]");
alch7.name = "Void armor";
alch7.description = "Allow to wear void armor";
alch7.icon= "thaumcraft:textures/items/void_robe_helm.png";

val alch8=mods.compatskills.TraitCreator.createTrait("gol", 3, 1, "compatskills:alchemy", 1, "trait|compatskills:thaum");
alch8.name = "Golemancer";
alch8.description = "Master of golems";
alch8.icon= "thaumcraft:textures/items/golem.png";
val alch9=mods.compatskills.TraitCreator.createTrait("fly", 4, 3, "compatskills:alchemy", 2, "trait|compatskills:thaum");
alch9.name = "Harmess";
alch9.description = "Allow to use harmess";
alch9.icon= "thaumicaugmentation:textures/items/harness_elytra.png";
val alch10=mods.compatskills.TraitCreator.createTrait("ench", 4, 1, "compatskills:alchemy", 1, "trait|compatskills:thaum");
alch10.name = "Enchanter";
alch10.description = "Allow to enchant items";
alch10.icon= "thaumcraft:textures/items/elemental_pick.png";
val alch11=mods.compatskills.TraitCreator.createTrait("sheildench", 4, 2, "compatskills:alchemy", 2, "trait|compatskills:ench");
alch11.name = "Shield's up!";
alch11.description = "Allow to apply arcane shield to armor and baubles";
alch11.icon= "thaumicaugmentation:textures/items/biome_selector.png";
val alch12=mods.compatskills.TraitCreator.createTrait("bauble", 3, 2, "compatskills:alchemy", 1, "trait|compatskills:thaum");
alch12.name = "Gadget fighter";
alch12.description = "Allow to use magical baubles";
alch12.icon= "thaumcraft:textures/items/amulet_fancy.png";
val alch13=mods.compatskills.TraitCreator.createTrait("baubleplus", 3, 3, "compatskills:alchemy", 1, "trait|compatskills:bauble");
alch13.name = "Greater gadget fighter";
alch13.description = "Allow to use even more complex baubles";
alch13.icon= "thaumcraft:textures/items/charm_undying.png";
