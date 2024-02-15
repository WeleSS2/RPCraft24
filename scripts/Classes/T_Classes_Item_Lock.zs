import mods.compatskills.SkillCreator.createSkill;
import mods.compatskills.Skill;
import crafttweaker.item.IItemStack as IItemStack;

#Some changes
<skill:reskillable:building>.setEnabled(false);
<skill:reskillable:gathering>.setEnabled(false);
<skill:reskillable:mining>.setEnabled(false);
<skill:reskillable:farming>.setEnabled(false);

#Classes tab
val klasy=mods.compatskills.SkillCreator.createSkill("classes", "textures/blocks/stonebrick.png");
klasy.name="Classes";
klasy.setRankIcon(0, "minecraft:textures/items/knowledge_book.png");
klasy.setEnabled(true);
klasy.setBaseLevelCost(0);
klasy.setLevelCap(2);
klasy.setLevelStaggering(["1|5"]);
klasy.setSkillPointInterval(2);

#Classes traits
val Class1 = mods.compatskills.TraitCreator.createTrait("warrior", 0, 0, "compatskills:classes", 1);
Class1.name = "Path of Warrior";
Class1.description = "Uses melee weapons and heavy armor";
Class1.icon = "minecraft:textures/items/iron_chestplate.png";
val Class2= mods.compatskills.TraitCreator.createTrait("mage", 2, 0, "compatskills:classes", 1);
Class2.name = "Path of Mage";
Class2.description = "Can cast spells basic spells";
Class2.icon = "ebwizardry:textures/items/scroll.png";
val Class3=mods.compatskills.TraitCreator.createTrait("hunter", 1, 0, "compatskills:classes", 1);
Class3.name = "Path of Hunter";
Class3.description = "Uses bows. Can tame creatures";
Class3.icon = "minecraft:textures/items/bow_standby.png";
val Class4=mods.compatskills.TraitCreator.createTrait("alch", 3, 0, "compatskills:classes", 1);
Class4.name = "Path of Alchemist";
Class4.description = "Loner, who likes brewing";
Class4.icon = "thaumcraft:textures/items/phial.png";
//val Class5=mods.compatskills.TraitCreator.createTrait("tech", 4, 0, "compatskills:classes", 1);
//Class5.name = "Path of Engineer";
//Class5.description = "Technician with power of science!";
//Class5.icon ="minecraft:textures/items/redstone_dust.png";


#Training tab
val train=mods.compatskills.SkillCreator.createSkill("training", "thaumcraft:textures/gui/gui_research_back_5.jpg");
train.name="Training";
train.setRankIcon(0, "minecraft:textures/items/iron_ingot.png");
train.setEnabled(true);
train.setRankIcon(0, "minecraft:textures/LVL1class.png");
train.setRankIcon(2, "minecraft:textures/LVL2class.png");
train.setRankIcon(4, "minecraft:textures/LVL3class.png");
train.setRankIcon(8, "minecraft:textures/LVL4class.png");
train.setBaseLevelCost(0);
train.setLevelCap(10);
train.setLevelStaggering(["1|7"]);
train.setSkillPointInterval(1);

#Training traits

#Hybrid
val hybrid=mods.compatskills.TraitCreator.createTrait("hybridwh", 2, 0, "compatskills:training", 4,"or|[trait|compatskills:warrior]~[trait|compatskills:hunter]");
hybrid.name = "Hybrid";
hybrid.description = "Allow to use other class trait";
hybrid.icon = "bountifulbaubles:textures/items/unused/trinket_apple_mentalblock.png";
val hybridm=mods.compatskills.TraitCreator.createTrait("hybridm", 2, 3, "compatskills:training", 3,"or|[trait|compatskills:warrior]~[trait|compatskills:hunter]");
hybridm.name = "Magic";
hybridm.description = "Allow to use magic";
hybridm.icon = "ebwizardry:textures/items/magic_silk.png";

#Warrior
val w1=mods.compatskills.TraitCreator.createTrait("sword", 0, 0, "compatskills:training", 2, "or|[trait|compatskills:warrior]~[trait|compatskills:hybridwh]");
w1.name = "Swordplay training";
w1.description = "Allow to use advanced melee weapons";
w1.icon = "minecraft:textures/items/diamond_sword.png";
val w2=mods.compatskills.TraitCreator.createTrait("swordII", 0, 1, "compatskills:training", 6, "trait|compatskills:sword");
w2.name = "Swordplay master";
w2.description = "Allow to use high tier melee weapons";
w2.icon = "minecraft:textures/berserker.png";
val w3=mods.compatskills.TraitCreator.createTrait("armor", 1, 0, "compatskills:training", 2, "or|[trait|compatskills:warrior]~[trait|compatskills:hybridwh]");
w3.name = "Heavy armor";
w3.description = "Allow to use tough armor";
w3.icon = "minecraft:textures/items/diamond_chestplate.png";
val w5=mods.compatskills.TraitCreator.createTrait("shield", 1, 1, "compatskills:training", 3, "trait|compatskills:armor");
w5.name = "Shield up!";
w5.description = "Allow to use shields";
w5.icon="spartanshields:textures/items/shield_basic_diamond.png";
val w4=mods.compatskills.TraitCreator.createTrait("armorII", 1, 2, "compatskills:training", 3, "trait|compatskills:shield");
w4.name = "Unbreakable";
w4.description = "Allow to use ridiculously tough armor";
w4.icon = "minecraft:textures/tank.png";


#Hunter
val h1=mods.compatskills.TraitCreator.createTrait("archery", 3, 0, "compatskills:training", 2, "or|[trait|compatskills:hunter]~[trait|compatskills:hybridwh]");
h1.name = "Archery training";
h1.description = "Allow to use bows";
h1.icon = "spartanweaponry:textures/items/crossbow_diamond_standby.png";
val h2=mods.compatskills.TraitCreator.createTrait("tamer", 4, 0, "compatskills:training", 2, "or|[trait|compatskills:hunter]~[trait|compatskills:hybridwh]");
h2.name = "Tamer instinct";
h2.description = "Allow to tame some creatures";
h2.icon = "minecraft:textures/items/saddle.png";
val h3=mods.compatskills.TraitCreator.createTrait("skir", 3, 1, "compatskills:training", 4, "trait|compatskills:archery");
h3.name = "Skirmisher";
h3.description = "Allow to use crossbows and dash";
h3.icon = "thaumcraft:textures/aspects/motus.png";
val h4=mods.compatskills.TraitCreator.createTrait("archeryII", 3, 2, "compatskills:training", 2, "trait|compatskills:skir");
h4.name = "Archery master";
h4.description = "Allow to use swtich bow and crossbow";
h4.icon = "minecraft:textures/archerymaster.png";
val h5=mods.compatskills.TraitCreator.createTrait("beast", 4, 1, "compatskills:training", 3, "trait|compatskills:tamer");
h5.name = "Beast tamer";
h5.description = "Allow to tame every tameable monster";
h5.icon = "minecraft:textures/beastmaster.png";
val h6=mods.compatskills.TraitCreator.createTrait("dragonraider", 4, 2, "compatskills:training", 3, "trait|compatskills:beast");
h6.name = "Dragon tamer";
h6.description = "Allow to tame every tameable monster";
h6.icon = "minecraft:textures/dragon.png";



#Mage hybrid
val a19=mods.compatskills.TraitCreator.createTrait("emagictraining", 0, 3, "compatskills:training", 3, "trait|compatskills:hybridm");
a19.name = "Elemental magic training";
a19.description = "Allow to use some elemental spells";
a19.icon = "minecraft:textures/mele.png";
val a20=mods.compatskills.TraitCreator.createTrait("hmagictraining", 1, 3, "compatskills:training", 3, "trait|compatskills:hybridm");
a20.name = "Healing magic training";
a20.description = "Allow to use some healing spells";
a20.icon = "minecraft:textures/mheal.png";
val a21=mods.compatskills.TraitCreator.createTrait("smagictraining", 3, 3, "compatskills:training", 3, "trait|compatskills:hybridm");
a21.name = "Sorcery magic training";
a21.description = "Allow to use some sorcery spells";
a21.icon = "minecraft:textures/msorc.png";
val a22=mods.compatskills.TraitCreator.createTrait("nmagictraining", 4, 3, "compatskills:training", 3, "trait|compatskills:hybridm");
a22.name = "Necronamcy magic training";
a22.description = "Allow to use some necronamcy spells";
a22.icon = "minecraft:textures/mnec.png";

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

val bas1=mods.compatskills.TraitCreator.createTrait("stoneminer", 2, 0, "compatskills:tools", 2, "trait|compatskills:stone_bas");
bas1.name = "Stone Warrior";
bas1.description = "Everything here will be soon ready, but not now.";
bas1.icon= "minecraft:textures/blocks/stone.png";
#val gam1=mods.compatskills.TraitCreator.createTrait("Coal", 1, 0, "compatskills:tools", 1, "trait|compatskills:coal");
#gam1.name = "";
#gam1.description = "";
#gam1.icon= "minecraft:textures/items/.png";


#Alchemist tab
val alchemist=mods.compatskills.SkillCreator.createSkill("alchemy", "thaumcraft:textures/gui/gui_research_back_7.jpg");
alchemist.name="Alchemist";
alchemist.setRankIcon(0, "thaumcraft:textures/items/goggles.png");
alchemist.setEnabled(true);
alchemist.setBaseLevelCost(0);
alchemist.setLevelCap(10);
alchemist.setLevelStaggering(["1|7"]);
alchemist.setSkillPointInterval(1);


#Alchemist traits
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
#Tools list
val itemt1 = [
<minecraft:stone_hoe>,
<minecraft:stone_axe>,
<minecraft:stone_pickaxe>,
<minecraft:stone_shovel>,
<minecraft:fishing_rod>,
<aquaculture:fishing_rod>
 ] as IItemStack[];

for item in itemt1 {
    mods.compatskills.Requirement.addRequirement(item, "compatskills:tools|2");
}

val itemt2 = [
<mysticalworld:copper_hoe>,
<mysticalworld:copper_shovel>,
<mysticalworld:copper_axe>,
<mysticalworld:copper_pickaxe>,
<defiledlands:umbrium_axe>,
<defiledlands:umbrium_hoe>,
<defiledlands:umbrium_pickaxe>,
<defiledlands:umbrium_shovel>,
<minecraft:iron_hoe>,
<minecraft:iron_axe>,
<minecraft:iron_pickaxe>,
<minecraft:iron_shovel>,
<notreepunching:knife/iron>,
<notreepunching:mattock/iron>,
<notreepunching:saw/iron>,
<aquaculture:iron_fishing_rod>,
<iceandfire:myrmex_jungle_shovel>,
<iceandfire:myrmex_jungle_axe>,
<iceandfire:myrmex_jungle_hoe>,
<iceandfire:myrmex_desert_shovel>,
<iceandfire:myrmex_desert_axe>,
<iceandfire:myrmex_desert_hoe>,
<iceandfire:myrmex_desert_pickaxe>,
<iceandfire:myrmex_jungle_pickaxe>,
<minecraft:compass>,
<minecraft:clock>,
<minecraft:shears>,
<minecraft:map>,
<minecraft:lead>,
<antiqueatlas:empty_antique_atlas>,
<antiqueatlas:antique_atlas>
 ] as IItemStack[];
//<cavern:ore_compass>,
//<cavern:aquamarine_shovel>,
//<cavern:aquamarine_axe>,
//<cavern:aquamarine_pickaxe>,

for item in itemt2 {
    mods.compatskills.Requirement.addRequirement(item, "compatskills:tools|8");
}

val itemt3 = [
<mysticalworld:amethyst_pickaxe>,
<mysticalworld:amethyst_axe>,
<mysticalworld:amethyst_hoe>,
<mysticalworld:amethyst_shovel>,
<minecraft:diamond_hoe>,
<minecraft:diamond_pickaxe>,
<minecraft:diamond_axe>,
<minecraft:diamond_shovel>,
<fishingmadebetter:fillet_knife_diamond>,
<fishingmadebetter:scaling_knife_diamond>,
<notreepunching:knife/diamond>,
<notreepunching:mattock/diamond>,
<notreepunching:saw/diamond>,
<aquaculture:diamond_fishing_rod>,
<aquaculture:neptunium_pickaxe>,
<aquaculture:neptunium_shovel>,
<aquaculture:neptunium_axe>,
<aquaculture:neptunium_hoe>,
<netherbackport:netheritepickaxe>,
<netherbackport:netheriteaxe>,
<netherbackport:netheriteshovel>,
<netherbackport:netheritehoe>
 ] as IItemStack[];
//<cavern:hexcite_pickaxe>,
//<cavern:hexcite_axe>,
//<cavern:hexcite_shovel>,
//<cavern:hexcite_hoe>,
//<cavern:magnite_shovel>,
//<cavern:magnite_axe>,
//<cavern:magnite_pickaxe>
for item in itemt3 {
    mods.compatskills.Requirement.addRequirement(item, "compatskills:tools|16");
}

val itemt4 = [
<iceandfire:dragonbone_pickaxe>,
<iceandfire:dragonbone_axe>,
<iceandfire:dragonbone_shovel>,
<iceandfire:dragonbone_hoe>,
<endreborn:tool_shovel_wolframium>,
<endreborn:tool_hoe_wolframium>,
<endreborn:tool_axe_wolframium>,
<endreborn:tool_pickaxe_wolframium>,
<endreborn:tool_shovel_endorium>,
<endreborn:tool_hoe_endorium>,
<endreborn:tool_axe_endorium>,
<endreborn:tool_pickaxe_endorium>
 ] as IItemStack[];

for item in itemt4 {
    mods.compatskills.Requirement.addRequirement(item, "compatskills:tools|20");
}

val itemtg = [
<minecraft:golden_hoe>,
<minecraft:golden_axe>,
<minecraft:golden_pickaxe>,
<minecraft:golden_shovel>,
<notreepunching:knife/gold>,
<notreepunching:mattock/gold>,
<notreepunching:saw/gold>,
<aquaculture:gold_fishing_rod>,
<iceandfire:silver_shovel>,
<iceandfire:silver_pickaxe>,
<iceandfire:silver_axe>,
<iceandfire:silver_hoe>
 ] as IItemStack[];

for item in itemtg {
    mods.compatskills.Requirement.addRequirement(item, "and|[compatskills:tools|6]~[reskillable:magic|8]");
}

val itemtth1= [
<thaumcraft:thaumium_pick>,
<thaumcraft:thaumium_hoe>,
<thaumcraft:thaumium_shovel>,
<thaumcraft:thaumium_axe>,
<steel_co:steel_pickaxe>,
<steel_co:steel_axe>,
<steel_co:steel_hoe>,
<steel_co:steel_shovel>
 ] as IItemStack[];

for item in itemtth1{
    mods.compatskills.Requirement.addRequirement(item, "compatskills:tools|12");
}


val itemtth2= [
<thaumcraft:elemental_hoe>,
<thaumcraft:elemental_pick>,
<thaumcraft:elemental_shovel>,
<thaumcraft:elemental_axe>
 ] as IItemStack[];

for item in itemtth2{
    mods.compatskills.Requirement.addRequirement(item, "and|[trait|compatskills:thaum]~[compatskills:tools|20]");
}

val itemtth3= [
<thaumcraft:primal_crusher>,
<thaumcraft:void_hoe>,
<thaumcraft:void_shovel>,
<thaumcraft:void_axe>,
<thaumcraft:void_pick>
 ] as IItemStack[];

for item in itemtth3{
    mods.compatskills.Requirement.addRequirement(item, "and|[trait|compatskills:vthaum]~[compatskills:tools|32]");
}

#Others mostly blocks
mods.compatskills.Requirement.addRequirement(<minecraft:end_crystal>, "reskillable:magic|32");
mods.compatskills.Requirement.addRequirement(<minecraft:anvil:2>, "compatskills:tools|16");
mods.compatskills.Requirement.addRequirement(<minecraft:anvil:1>, "compatskills:tools|16");
mods.compatskills.Requirement.addRequirement(<minecraft:ender_chest>, "reskillable:magic|24");
mods.compatskills.Requirement.addRequirement(<minecraft:anvil>, "compatskills:tools|16");
mods.compatskills.Requirement.addRequirement(<minecraft:ender_pearl>, "reskillable:magic|12");
mods.compatskills.Requirement.addRequirement(<minecraft:elytra>, "and|[reskillable:agility|24]~[reskillable:magic|12]");
mods.compatskills.Requirement.addRequirement(<minecraft:totem_of_undying>, "reskillable:magic|24");
mods.compatskills.Requirement.addRequirement(<minecraft:enchanting_table>, "reskillable:magic|12");


#Melee weapons
val item1ad = [
<spartanweaponry:dagger_diamond>,
<spartanweaponry:longsword_diamond>,
<spartanweaponry:katana_diamond>,
<spartanweaponry:saber_diamond>,
<spartanweaponry:rapier_diamond>,
<spartanweaponry:greatsword_diamond>,
<spartanweaponry:hammer_diamond>,
<spartanweaponry:spear_diamond>,
<spartanweaponry:warhammer_diamond>,
<minecraft:diamond_sword>,
<mysticalworld:amethyst_sword>,
<spartanweaponry:halberd_diamond>,
<mysticalworld:amethyst_knife>,
<spartanweaponry:pike_diamond>,
<spartanweaponry:lance_diamond>,
<spartanweaponry:throwing_knife_diamond>,
<spartanweaponry:throwing_axe_diamond>,
<spartanweaponry:javelin_diamond>,
<spartanweaponry:boomerang_diamond>,
<spartanweaponry:battleaxe_diamond>,
<spartanweaponry:mace_diamond>,
<spartanweaponry:glaive_diamond>,
<spartanweaponry:staff_diamond>,
<endreborn:tool_sword_wolframium>,
<netherbackport:netheritesword>
 ] as IItemStack[];
//<cavern:hexcite_sword>,
//<cavern:magnite_sword>
for item in item1ad {
    mods.compatskills.Requirement.addRequirement(item, "and|[reskillable:attack|16]~[trait|compatskills:sword]");
}

val item_nep_1 = [
<aquaculture:neptunium_sword>,
<iceandfire:dragonbone_sword>,
<endreborn:tool_sword_endorium>
] as IItemStack[];
for item in item_nep_1 {
     mods.compatskills.Requirement.addRequirement(item, "and|[reskillable:attack|18]~[trait|compatskills:sword]");
}

val item_drag_1 = [
<spartanfire:katana_dragonbone>,
<spartanfire:greatsword_dragonbone>,
<spartanfire:longsword_dragonbone>,
<spartanfire:saber_dragonbone>,
<spartanfire:rapier_dragonbone>,
<spartanfire:dagger_dragonbone>,
<spartanfire:spear_dragonbone>,
<spartanfire:pike_dragonbone>,
<spartanfire:lance_dragonbone>,
<spartanfire:halberd_dragonbone>,
<spartanfire:warhammer_dragonbone>,
<spartanfire:hammer_dragonbone>,
<spartanfire:throwing_axe_dragonbone>,
<spartanfire:throwing_knife_dragonbone>,
<spartanfire:javelin_dragonbone>,
<spartanfire:battleaxe_dragonbone>,
<spartanfire:boomerang_dragonbone>,
<spartanfire:mace_dragonbone>,
<spartanfire:staff_dragonbone>,
<spartanfire:glaive_dragonbone>,
<spartanweaponryarcana:dagger_voidmetal>,
<spartanweaponryarcana:longsword_voidmetal>,
<spartanweaponryarcana:katana_voidmetal>,
<spartanweaponryarcana:saber_voidmetal>,
<spartanweaponryarcana:rapier_voidmetal>,
<spartanweaponryarcana:greatsword_voidmetal>,
<spartanweaponryarcana:hammer_voidmetal>,
<spartanweaponryarcana:warhammer_voidmetal>,
<spartanweaponryarcana:spear_voidmetal>,
<spartanweaponryarcana:halberd_voidmetal>,
<spartanweaponryarcana:pike_voidmetal>,
<spartanweaponryarcana:lance_voidmetal>,
<spartanweaponryarcana:throwing_knife_voidmetal>,
<spartanweaponryarcana:throwing_axe_voidmetal>,
<spartanweaponryarcana:javelin_voidmetal>,
<spartanweaponryarcana:boomerang_voidmetal>,
<spartanweaponryarcana:battleaxe_voidmetal>,
<spartanweaponryarcana:mace_voidmetal>,
<spartanweaponryarcana:glaive_voidmetal>,
<spartanweaponryarcana:staff_voidmetal>,
<spartanweaponryarcana:dagger_thaumium>,
<spartanweaponryarcana:longsword_thaumium>,
<spartanweaponryarcana:katana_thaumium>,
<spartanweaponryarcana:saber_thaumium>,
<spartanweaponryarcana:rapier_thaumium>,
<spartanweaponryarcana:greatsword_thaumium>,
<spartanweaponryarcana:hammer_thaumium>,
<spartanweaponryarcana:warhammer_thaumium>,
<spartanweaponryarcana:spear_thaumium>,
<spartanweaponryarcana:halberd_thaumium>,
<spartanweaponryarcana:pike_thaumium>,
<spartanweaponryarcana:lance_thaumium>,
<spartanweaponryarcana:throwing_knife_thaumium>,
<spartanweaponryarcana:throwing_axe_thaumium>,
<spartanweaponryarcana:javelin_thaumium>,
<spartanweaponryarcana:boomerang_thaumium>,
<spartanweaponryarcana:battleaxe_thaumium>,
<spartanweaponryarcana:mace_thaumium>,
<spartanweaponryarcana:glaive_thaumium>,
<spartanweaponryarcana:staff_thaumium>
] as IItemStack[];
for item in item_drag_1 {
     mods.compatskills.Requirement.addRequirement(item, "and|[reskillable:attack|24]~[trait|compatskills:sword]");
} 

val item1bone = [
<endreborn:ender_sword>,
<defiledlands:scarlite_reaver>,
<defiledlands:scarlite_razor>,
<srparasites:weapon_scythe>,
<srparasites:weapon_scythe_sentient>,
<srparasites:weapon_axe>,
<srparasites:weapon_axe_sentient>,
<srparasites:weapon_sword>,
<srparasites:weapon_sword_sentient>,
<srparasites:weapon_cleaver>,
<srparasites:weapon_cleaver_sentient>,
<spartanfire:greatsword_fire_dragonbone>,
<spartanfire:rapier_fire_dragonbone>,
<spartanfire:katana_fire_dragonbone>,
<spartanfire:longsword_fire_dragonbone>,
<spartanfire:saber_fire_dragonbone>,
<spartanfire:dagger_fire_dragonbone>,
<spartanfire:spear_fire_dragonbone>,
<spartanfire:pike_fire_dragonbone>,
<spartanfire:lance_fire_dragonbone>,
<spartanfire:halberd_fire_dragonbone>,
<spartanfire:warhammer_fire_dragonbone>,
<spartanfire:hammer_fire_dragonbone>,
<iceandfire:dragonbone_sword_fire>,
<spartanfire:throwing_axe_fire_dragonbone>,
<spartanfire:throwing_knife_fire_dragonbone>,
<spartanfire:javelin_fire_dragonbone>,
<spartanfire:battleaxe_fire_dragonbone>,
<spartanfire:boomerang_fire_dragonbone>,
<spartanfire:mace_fire_dragonbone>,
<spartanfire:staff_fire_dragonbone>,
<spartanfire:glaive_fire_dragonbone>,
<spartanfire:katana_ice_dragonbone>,
<iceandfire:dragonbone_sword_ice>,
<spartanfire:greatsword_ice_dragonbone>,
<spartanfire:longsword_ice_dragonbone>,
<spartanfire:saber_ice_dragonbone>,
<spartanfire:throwing_knife_ice_dragonbone>,
<spartanfire:rapier_ice_dragonbone>,
<spartanfire:dagger_ice_dragonbone>,
<spartanfire:spear_ice_dragonbone>,
<spartanfire:pike_ice_dragonbone>,
<spartanfire:lance_ice_dragonbone>,
<spartanfire:halberd_ice_dragonbone>,
<spartanfire:warhammer_ice_dragonbone>,
<spartanfire:hammer_ice_dragonbone>,
<spartanfire:throwing_axe_ice_dragonbone>,
<spartanfire:javelin_ice_dragonbone>,
<spartanfire:battleaxe_ice_dragonbone>,
<spartanfire:boomerang_ice_dragonbone>,
<spartanfire:mace_ice_dragonbone>,
<spartanfire:staff_ice_dragonbone>,
<spartanfire:glaive_ice_dragonbone>
 ] as IItemStack[];

for item in item1bone {
    mods.compatskills.Requirement.addRequirement(item, "and|[reskillable:attack|32]~[trait|compatskills:sword]");
}
val itemhw= [
<iceandfire:troll_weapon.trunk_frost>,
<iceandfire:troll_weapon.hammer>,
<iceandfire:troll_weapon.column_frost>,
<iceandfire:troll_weapon.trunk>,
<iceandfire:troll_weapon.axe>,
<iceandfire:troll_weapon.column_forest>,
<iceandfire:troll_weapon.column>
 ] as IItemStack[];

for item in itemhw {
    mods.compatskills.Requirement.addRequirement(item, "and|[reskillable:attack|20]~[trait|compatskills:sword]");
}
/*
val item1daa = [
<iceandfire:dragonsteel_fire_sword>,
<iceandfire:dragonsteel_fire_pickaxe>,
<iceandfire:dragonsteel_fire_axe>,
<iceandfire:dragonsteel_fire_shovel>,
<iceandfire:dragonsteel_fire_hoe>,
<spartanfire:katana_fire_dragonsteel>,
<spartanfire:greatsword_fire_dragonsteel>,
<spartanfire:longsword_fire_dragonsteel>,
<spartanfire:saber_fire_dragonsteel>,
<spartanfire:rapier_fire_dragonsteel>,
<spartanfire:dagger_fire_dragonsteel>,
<spartanfire:spear_fire_dragonsteel>,
<spartanfire:pike_fire_dragonsteel>,
<spartanfire:lance_fire_dragonsteel>,
<spartanfire:halberd_fire_dragonsteel>,
<spartanfire:warhammer_fire_dragonsteel>,
<spartanfire:hammer_fire_dragonsteel>,
<spartanfire:throwing_knife_fire_dragonsteel>,
<spartanfire:throwing_axe_fire_dragonsteel>,
<spartanfire:javelin_fire_dragonsteel>,
<spartanfire:battleaxe_fire_dragonsteel>,
<spartanfire:boomerang_fire_dragonsteel>,
<spartanfire:mace_fire_dragonsteel>,
<spartanfire:staff_fire_dragonsteel>,
<spartanfire:glaive_fire_dragonsteel>,
<iceandfire:dragonsteel_ice_sword>,
<iceandfire:dragonsteel_ice_pickaxe>,
<iceandfire:dragonsteel_ice_axe>,
<iceandfire:dragonsteel_ice_shovel>,
<iceandfire:dragonsteel_ice_hoe>,
<spartanfire:katana_ice_dragonsteel>,
<spartanfire:greatsword_ice_dragonsteel>,
<spartanfire:longsword_ice_dragonsteel>,
<spartanfire:saber_ice_dragonsteel>,
<spartanfire:rapier_ice_dragonsteel>,
<spartanfire:dagger_ice_dragonsteel>,
<spartanfire:spear_ice_dragonsteel>,
<spartanfire:pike_ice_dragonsteel>,
<spartanfire:lance_ice_dragonsteel>,
<spartanfire:halberd_ice_dragonsteel>,
<spartanfire:warhammer_ice_dragonsteel>,
<spartanfire:hammer_ice_dragonsteel>,
<spartanfire:throwing_axe_ice_dragonsteel>,
<spartanfire:throwing_knife_ice_dragonsteel>,
<spartanfire:javelin_ice_dragonsteel>,
<spartanfire:battleaxe_ice_dragonsteel>,
<spartanfire:boomerang_ice_dragonsteel>,
<spartanfire:mace_ice_dragonsteel>,
<spartanfire:staff_ice_dragonsteel>,
<spartanfire:glaive_ice_dragonsteel>
 ] as IItemStack[];

for item in item1daa {
    mods.compatskills.Requirement.addRequirement(item, "and|[reskillable:attack|32]~[trait|compatskills:swordII]");
}
*/

val item43gold= [
<minecraft:golden_sword>,
<spartanweaponry:dagger_gold>,
<spartanweaponry:longsword_gold>,
<spartanweaponry:katana_gold>,
<spartanweaponry:saber_gold>,
<spartanweaponry:rapier_gold>,
<spartanweaponry:greatsword_gold>,
<spartanweaponry:hammer_gold>,
<spartanweaponry:warhammer_gold>,
<spartanweaponry:spear_gold>,
<spartanweaponry:halberd_gold>,
<spartanweaponry:pike_gold>,
<spartanweaponry:lance_gold>,
<spartanweaponry:throwing_knife_gold>,
<spartanweaponry:throwing_axe_gold>,
<spartanweaponry:javelin_gold>,
<spartanweaponry:boomerang_gold>,
<spartanweaponry:battleaxe_gold>,
<spartanweaponry:mace_gold>,
<spartanweaponry:glaive_gold>,
<spartanweaponry:staff_gold>,
<iceandfire:silver_sword>,
<spartanweaponry:dagger_silver>,
<spartanweaponry:longsword_silver>,
<spartanweaponry:katana_silver>,
<spartanweaponry:saber_silver>,
<spartanweaponry:rapier_silver>,
<spartanweaponry:hammer_silver>,
<spartanweaponry:greatsword_silver>,
<spartanweaponry:warhammer_silver>,
<spartanweaponry:halberd_silver>,
<spartanweaponry:spear_silver>,
<spartanweaponry:pike_silver>,
<spartanweaponry:lance_silver>,
<spartanweaponry:throwing_knife_silver>,
<spartanweaponry:throwing_axe_silver>,
<spartanweaponry:javelin_silver>,
<spartanweaponry:boomerang_silver>,
<spartanweaponry:battleaxe_silver>,
<spartanweaponry:glaive_silver>,
<spartanweaponry:mace_silver>,
<spartanweaponry:staff_silver>
 ] as IItemStack[];

for item in item43gold {
    mods.compatskills.Requirement.addRequirement(item, "and|[reskillable:attack|6]~[reskillable:magic|8]");
}
val item2 = [
 <spartanweaponry:spear_stone>,
<spartanweaponry:staff_stone>,
<spartanweaponry:glaive_stone>,
<spartanweaponry:mace_stone>,
<spartanweaponry:battleaxe_stone>,
<spartanweaponry:boomerang_stone>,
<spartanweaponry:javelin_stone>,
<spartanweaponry:throwing_axe_stone>,
<spartanweaponry:throwing_knife_stone>,
<minecraft:stone_sword>,
<spartanweaponry:hammer_stone>,
<spartanweaponry:greatsword_stone>,
<spartanweaponry:rapier_stone>,
<spartanweaponry:saber_stone>,
<spartanweaponry:katana_stone>,
<spartanweaponry:longsword_stone>,
<spartanweaponry:dagger_stone>,
<spartanweaponry:lance_stone>,
<spartanweaponry:pike_stone>,
<spartanweaponry:halberd_stone>,
<spartanweaponry:warhammer_stone>
 ] as IItemStack[];
#armors
val item1ddd = [
<iceandfire:armor_bronze_helmet>,
<iceandfire:armor_bronze_chestplate>,
<iceandfire:armor_bronze_leggings>,
<iceandfire:armor_bronze_boots>,
<iceandfire:armor_red_helmet>,
<iceandfire:armor_red_chestplate>,
<iceandfire:armor_red_leggings>,
<iceandfire:armor_red_boots>,
<iceandfire:armor_green_helmet>,
<iceandfire:armor_green_chestplate>,
<iceandfire:armor_green_leggings>,
<iceandfire:armor_green_boots>,
<iceandfire:armor_gray_helmet>,
<iceandfire:armor_gray_chestplate>,
<iceandfire:armor_gray_leggings>,
<iceandfire:armor_gray_boots>,
<iceandfire:armor_blue_helmet>,
<iceandfire:armor_blue_chestplate>,
<iceandfire:armor_blue_leggings>,
<iceandfire:armor_blue_boots>,
<iceandfire:armor_white_helmet>,
<iceandfire:armor_white_chestplate>,
<iceandfire:armor_white_leggings>,
<iceandfire:armor_white_boots>,
<iceandfire:armor_sapphire_helmet>,
<iceandfire:armor_sapphire_chestplate>,
<iceandfire:armor_sapphire_leggings>,
<iceandfire:armor_sapphire_boots>,
<iceandfire:armor_silver_helmet>,
<iceandfire:armor_silver_chestplate>,
<iceandfire:armor_silver_leggings>,
<iceandfire:armor_silver_boots>
 ] as IItemStack[];

for item in item1ddd {
    mods.compatskills.Requirement.addRequirement(item, "and|[reskillable:defense|24]~[trait|compatskills:armor]");
}

val item3sea = [
<iceandfire:tide_blue_helmet>,
<iceandfire:tide_blue_chestplate>,
<iceandfire:tide_blue_leggings>,
<iceandfire:tide_blue_boots>,
<iceandfire:tide_green_helmet>,
<iceandfire:tide_green_chestplate>,
<iceandfire:tide_green_leggings>,
<iceandfire:tide_green_boots>,
<iceandfire:tide_purple_helmet>,
<iceandfire:tide_purple_chestplate>,
<iceandfire:tide_purple_leggings>,
<iceandfire:tide_purple_boots>,
<iceandfire:tide_deepblue_helmet>,
<iceandfire:tide_deepblue_chestplate>,
<iceandfire:tide_deepblue_leggings>,
<iceandfire:tide_deepblue_boots>,
<iceandfire:tide_teal_helmet>,
<iceandfire:tide_teal_chestplate>,
<iceandfire:tide_teal_leggings>,
<iceandfire:tide_teal_boots>,
<iceandfire:tide_bronze_helmet>,
<iceandfire:tide_bronze_chestplate>,
<iceandfire:tide_bronze_leggings>,
<iceandfire:tide_bronze_boots>,
<iceandfire:tide_red_helmet>,
<iceandfire:tide_red_chestplate>,
<iceandfire:tide_red_leggings>,
<iceandfire:tide_red_boots>
 ] as IItemStack[];

for item in item3sea {
    mods.compatskills.Requirement.addRequirement(item, "and|[reskillable:defense|22]~[trait|compatskills:armor]");
}

val item1ds = [
<endreborn:armour_helmet_dragon>,
<endreborn:armour_leggings_dragon>,
<endreborn:armour_boots_dragon>,
<endreborn:armour_chestplate_dragon>,
<forgottenitems:golem_helmet>,
<forgottenitems:golem_chestplate>,
<forgottenitems:golem_leggings>,
<forgottenitems:golem_boots>    
] as IItemStack[];
/*<iceandfire:dragonsteel_fire_helmet>,
<iceandfire:dragonsteel_fire_chestplate>,
<iceandfire:dragonsteel_fire_leggings>,
<iceandfire:dragonsteel_fire_boots>,
<iceandfire:dragonsteel_ice_helmet>,
<iceandfire:dragonsteel_ice_chestplate>,
<iceandfire:dragonsteel_ice_leggings>,
<iceandfire:dragonsteel_ice_boots>,*/


for item in item1ds {
    mods.compatskills.Requirement.addRequirement(item, "and|[reskillable:defense|32]~[trait|compatskills:armorII]");
}
val item42= [
<minecraft:diamond_boots>,
<minecraft:diamond_leggings>,
<minecraft:diamond_chestplate>,
<minecraft:diamond_helmet>,
<endreborn:armour_helmet_helmet>,
<endreborn:armour_boots_obsidian>,
<endreborn:armour_leggings_obsidian>,
<endreborn:armour_chestplate_obsidian>,
<aquaculture:neptunium_helmet>,
<aquaculture:neptunium_chestplate>,
<aquaculture:neptunium_leggings>,
<aquaculture:neptunium_boots>,
<netherbackport:netheritearmorhelmet>,
<netherbackport:netheritearmorbody>,
<netherbackport:netheritearmorlegs>,
<netherbackport:netheritearmorboots>
 ] as IItemStack[];
//<cavern:hexcite_helmet>,
//<cavern:hexcite_chestplate>,
//<cavern:hexcite_leggings>,
//<cavern:hexcite_boots>
for item in item42 {
    mods.compatskills.Requirement.addRequirement(item, "and|[reskillable:defense|16]~[trait|compatskills:armor]");
}

val steel_melee_all= [
 <spartanweaponry:spear_steel>,
<spartanweaponry:staff_steel>,
<spartanweaponry:glaive_steel>,
<spartanweaponry:mace_steel>,
<spartanweaponry:battleaxe_steel>,
<spartanweaponry:boomerang_steel>,
<spartanweaponry:javelin_steel>,
<spartanweaponry:throwing_axe_steel>,
<spartanweaponry:throwing_knife_steel>,
<spartanweaponry:hammer_steel>,
<spartanweaponry:greatsword_steel>,
<spartanweaponry:rapier_steel>,
<spartanweaponry:saber_steel>,
<spartanweaponry:katana_steel>,
<spartanweaponry:longsword_steel>,
<spartanweaponry:dagger_steel>,
<spartanweaponry:lance_steel>,
<spartanweaponry:pike_steel>,
<spartanweaponry:halberd_steel>,
<spartanweaponry:warhammer_steel>,
<steel_co:steel_sword>
] as IItemStack[];

for item in steel_melee_all {
    mods.compatskills.Requirement.addRequirement(item, "or|[reskillable:attack|16]~[and|[trait|compatskills:sword]~[reskillable:attack|8]]");
}

val steel_lock_all= [
	<steel_co:steel_helmet>,
	<steel_co:steel_body>,
	<steel_co:steel_legs>,
	<steel_co:steel_boots>
] as IItemStack[];

for item in steel_lock_all {
    mods.compatskills.Requirement.addRequirement(item, "or|[reskillable:defense|16]~[and|[trait|compatskills:armor]~[reskillable:defense|8]]");
}



val item43= [
<minecraft:golden_boots>,
<minecraft:golden_leggings>,
<minecraft:golden_chestplate>,
<minecraft:golden_helmet>,
<iceandfire:armor_silver_metal_helmet>,
<iceandfire:armor_silver_metal_chestplate>,
<iceandfire:armor_silver_metal_leggings>,
<iceandfire:armor_silver_metal_boots>
 ] as IItemStack[];

for item in item43 {
    mods.compatskills.Requirement.addRequirement(item, "and|[reskillable:defense|6]~[reskillable:magic|8]");
}


val item3worm = [
<iceandfire:deathworm_white_helmet>,
<iceandfire:deathworm_yellow_boots>,
<iceandfire:deathworm_yellow_leggings>,
<iceandfire:deathworm_yellow_chestplate>,
<iceandfire:deathworm_yellow_helmet>,
<iceandfire:deathworm_red_boots>,
<iceandfire:deathworm_red_leggings>,
<iceandfire:deathworm_red_chestplate>,
<iceandfire:deathworm_red_helmet>,
<iceandfire:deathworm_white_boots>,
<iceandfire:deathworm_white_leggings>,
<iceandfire:deathworm_white_chestplate>,
<iceandfire:forest_troll_leather_helmet>,
<iceandfire:forest_troll_leather_chestplate>,
<iceandfire:forest_troll_leather_leggings>,
<iceandfire:forest_troll_leather_boots>,
<iceandfire:frost_troll_leather_helmet>,
<iceandfire:frost_troll_leather_chestplate>,
<iceandfire:frost_troll_leather_leggings>,
<iceandfire:frost_troll_leather_boots>,
<iceandfire:mountain_troll_leather_helmet>,
<iceandfire:mountain_troll_leather_chestplate>,
<iceandfire:mountain_troll_leather_leggings>,
<iceandfire:mountain_troll_leather_boots>,
<mysticalworld:antler_hat>
 ] as IItemStack[];

for item in item3worm {
    mods.compatskills.Requirement.addRequirement(item, "reskillable:defense|16");
}

val item3 = [
 
<minecraft:leather_helmet>,
<minecraft:leather_chestplate>,
<minecraft:leather_leggings>,
<minecraft:leather_boots>

 ] as IItemStack[];

for item in item3 {
    mods.compatskills.Requirement.addRequirement(item, "reskillable:defense|2");
}

val item4= [
 <minecraft:chainmail_boots>,
<minecraft:chainmail_leggings>,
<minecraft:chainmail_chestplate>,
<minecraft:chainmail_helmet>
 ] as IItemStack[];

for item in item4 {
    mods.compatskills.Requirement.addRequirement(item, "reskillable:defense|4");
}

val item41= [
<mysticalworld:copper_chestplate>,
<mysticalworld:copper_helmet>,
<mysticalworld:copper_leggings>,
<mysticalworld:copper_boots>,
<iceandfire:myrmex_jungle_leggings>,
<iceandfire:myrmex_jungle_chestplate>,
<iceandfire:myrmex_jungle_boots>,
<iceandfire:myrmex_desert_helmet>,
<iceandfire:myrmex_desert_chestplate>,
<iceandfire:myrmex_jungle_helmet>,
<iceandfire:myrmex_desert_leggings>,
<iceandfire:myrmex_desert_boots>,
<thaumcraft:thaumium_legs>,
<thaumcraft:thaumium_boots>,
<thaumcraft:thaumium_chest>,
<thaumcraft:thaumium_helm>
 ] as IItemStack[];

for item in item41 {
    mods.compatskills.Requirement.addRequirement(item, "reskillable:defense|12");
}

val item_def_8= [
<minecraft:iron_boots>,
<minecraft:iron_leggings>,
<minecraft:iron_chestplate>,
<minecraft:iron_helmet>
] as IItemStack[];

for item in item_def_8 {
    mods.compatskills.Requirement.addRequirement(item, "reskillable:defense|8");
}

#shields
mods.compatskills.Requirement.addRequirement(<spartanshields:shield_tower_diamond>, "and|[reskillable:defense|16]~[trait|compatskills:shield]");
mods.compatskills.Requirement.addRequirement(<spartanshields:shield_basic_gold>, "and|[reskillable:defense|8]~[trait|compatskills:shield]");
mods.compatskills.Requirement.addRequirement(<spartanshields:shield_tower_gold>, "and|[reskillable:defense|8]~[trait|compatskills:shield]");
mods.compatskills.Requirement.addRequirement(<spartanshields:shield_basic_iron>, "and|[reskillable:defense|8]~[trait|compatskills:shield]");
mods.compatskills.Requirement.addRequirement(<spartanshields:shield_tower_iron>, "and|[reskillable:defense|8]~[trait|compatskills:shield]");
mods.compatskills.Requirement.addRequirement(<spartanshields:shield_basic_stone>, "and|[reskillable:defense|4]~[trait|compatskills:shield]");
mods.compatskills.Requirement.addRequirement(<spartanshields:shield_tower_stone>, "and|[reskillable:defense|4]~[trait|compatskills:shield]");
mods.compatskills.Requirement.addRequirement(<spartanshields:shield_basic_wood>, "and|[reskillable:defense|2]~[trait|compatskills:shield]");
mods.compatskills.Requirement.addRequirement(<spartanshields:shield_tower_wood>, "and|[reskillable:defense|2]~[trait|compatskills:shield]");
mods.compatskills.Requirement.addRequirement(<spartanshields:shield_tower_silver>, "and|[reskillable:defense|8]~[trait|compatskills:shield]");
mods.compatskills.Requirement.addRequirement(<spartanshields:shield_basic_silver>, "and|[reskillable:defense|8]~[trait|compatskills:shield]");
mods.compatskills.Requirement.addRequirement(<spartanshields:shield_basic_obsidian>, "and|[reskillable:defense|24]~[trait|compatskills:shield]");
mods.compatskills.Requirement.addRequirement(<spartanshields:shield_tower_obsidian>, "and|[reskillable:defense|24]~[trait|compatskills:shield]");
mods.compatskills.Requirement.addRequirement(<spartanshields:shield_basic_diamond>, "and|[reskillable:defense|16]~[trait|compatskills:shield]");
mods.compatskills.Requirement.addRequirement(<spartanshields:shield_tc_thaumium>, "and|[reskillable:defense|8]~[trait|compatskills:shield]");
mods.compatskills.Requirement.addRequirement(<spartanshields:shield_tower_steel>, "and|[reskillable:defense|12]~[trait|compatskills:shield]");
mods.compatskills.Requirement.addRequirement(<spartanshields:shield_basic_steel>, "and|[reskillable:defense|12]~[trait|compatskills:shield]");
mods.compatskills.Requirement.addRequirement(<bountifulbaubles:shieldcobalt>, "and|[reskillable:defense|16]~[trait|compatskills:shield]");
mods.compatskills.Requirement.addRequirement(<bountifulbaubles:shieldankh>, "and|[reskillable:defense|32]~[trait|compatskills:shield]");
mods.compatskills.Requirement.addRequirement(<bountifulbaubles:shieldobsidian>, "and|[reskillable:defense|24]~[trait|compatskills:shield]");



for item in item2 {
    mods.compatskills.Requirement.addRequirement(item, "reskillable:attack|2");
}

val item5v = [
<mysticalworld:copper_knife>,
<mysticalworld:copper_sword>,
<minecraft:iron_sword>,
<spartanweaponry:dagger_iron>,
<spartanweaponry:longsword_iron>,
<spartanweaponry:katana_iron>,
<spartanweaponry:saber_iron>,
<spartanweaponry:rapier_iron>,
<spartanweaponry:greatsword_iron>,
<spartanweaponry:hammer_iron>,
<spartanweaponry:warhammer_iron>,
<spartanweaponry:spear_iron>,
<spartanweaponry:halberd_iron>,
<spartanweaponry:pike_iron>,
<spartanweaponry:lance_iron>,
<spartanweaponry:throwing_knife_iron>,
<spartanweaponry:throwing_axe_iron>,
<spartanweaponry:javelin_iron>,
<spartanweaponry:boomerang_iron>,
<spartanweaponry:battleaxe_iron>,
<spartanweaponry:mace_iron>,
<spartanweaponry:glaive_iron>,
<spartanweaponry:staff_iron>,
<iceandfire:myrmex_desert_sword>,
<iceandfire:myrmex_desert_sword_venom>,
<spartanfire:katana_desert>,
<spartanfire:greatsword_desert>,
<spartanfire:longsword_desert>,
<spartanfire:saber_desert>,
<spartanfire:rapier_desert>,
<spartanfire:dagger_desert>,
<spartanfire:spear_desert>,
<spartanfire:pike_desert>,
<spartanfire:lance_desert>,
<spartanfire:halberd_desert>,
<spartanfire:warhammer_desert>,
<spartanfire:hammer_desert>,
<spartanfire:throwing_axe_desert>,
<spartanfire:throwing_knife_desert>,
<spartanfire:javelin_desert>,
<spartanfire:battleaxe_desert>,
<spartanfire:boomerang_desert>,
<spartanfire:mace_desert>,
<spartanfire:staff_desert>,
<spartanfire:glaive_desert>,
<spartanfire:katana_desert_venom>,
<spartanfire:greatsword_desert_venom>,
<spartanfire:longsword_desert_venom>,
<spartanfire:saber_desert_venom>,
<spartanfire:rapier_desert_venom>,
<spartanfire:dagger_desert_venom>,
<spartanfire:spear_desert_venom>,
<spartanfire:pike_desert_venom>,
<spartanfire:lance_desert_venom>,
<spartanfire:halberd_desert_venom>,
<spartanfire:warhammer_desert_venom>,
<spartanfire:hammer_desert_venom>,
<spartanfire:throwing_axe_desert_venom>,
<spartanfire:throwing_knife_desert_venom>,
<spartanfire:javelin_desert_venom>,
<spartanfire:battleaxe_desert_venom>,
<spartanfire:boomerang_desert_venom>,
<spartanfire:mace_desert_venom>,
<spartanfire:staff_desert_venom>,
<spartanfire:glaive_desert_venom>,
<iceandfire:myrmex_jungle_sword>,
<iceandfire:myrmex_jungle_sword_venom>,
<spartanfire:katana_jungle>,
<spartanfire:greatsword_jungle>,
<spartanfire:longsword_jungle>,
<spartanfire:saber_jungle>,
<spartanfire:rapier_jungle>,
<spartanfire:dagger_jungle>,
<spartanfire:spear_jungle>,
<spartanfire:pike_jungle>,
<spartanfire:lance_jungle>,
<spartanfire:halberd_jungle>,
<spartanfire:warhammer_jungle>,
<spartanfire:hammer_jungle>,
<spartanfire:throwing_axe_jungle>,
<spartanfire:throwing_knife_jungle>,
<spartanfire:javelin_jungle>,
<spartanfire:battleaxe_jungle>,
<spartanfire:boomerang_jungle>,
<spartanfire:mace_jungle>,
<spartanfire:staff_jungle>,
<spartanfire:glaive_jungle>,
<spartanfire:katana_jungle_venom>,
<spartanfire:longsword_jungle_venom>,
<spartanfire:saber_jungle_venom>,
<spartanfire:rapier_jungle_venom>,
<spartanfire:dagger_jungle_venom>,
<spartanfire:spear_jungle_venom>,
<spartanfire:pike_jungle_venom>,
<spartanfire:lance_jungle_venom>,
<spartanfire:halberd_jungle_venom>,
<spartanfire:warhammer_jungle_venom>,
<spartanfire:hammer_jungle_venom>,
<spartanfire:throwing_axe_jungle_venom>,
<spartanfire:throwing_knife_jungle_venom>,
<spartanfire:javelin_jungle_venom>,
<spartanfire:battleaxe_jungle_venom>,
<spartanfire:boomerang_jungle_venom>,
<spartanfire:mace_jungle_venom>,
<spartanfire:staff_jungle_venom>,
<spartanfire:glaive_jungle_venom>
 ] as IItemStack[];
/* 
<spartanweaponryarcana:throwing_knife_thaumium>,
<spartanweaponryarcana:throwing_axe_thaumium>,
<spartanweaponryarcana:javelin_thaumium>,
<spartanweaponryarcana:boomerang_thaumium>,
<spartanweaponryarcana:battleaxe_thaumium>,
<spartanweaponryarcana:mace_thaumium>,
<spartanweaponryarcana:glaive_thaumium>,
<spartanweaponryarcana:staff_thaumium>,
<spartanweaponryarcana:spear_thaumium>,
<spartanweaponryarcana:warhammer_thaumium>,
<spartanweaponryarcana:hammer_thaumium>,
<spartanweaponryarcana:greatsword_thaumium>,
<spartanweaponryarcana:dagger_thaumium>,
<spartanweaponryarcana:longsword_thaumium>,
<spartanweaponryarcana:katana_thaumium>,
<spartanweaponryarcana:saber_thaumium>,
<spartanweaponryarcana:rapier_thaumium>,
<spartanweaponryarcana:halberd_thaumium>,
<spartanweaponryarcana:pike_thaumium>,
<spartanweaponryarcana:lance_thaumium>,*/
for item in item5v {
    mods.compatskills.Requirement.addRequirement(item, "reskillable:attack|8");
}


val item3summspec = [

<iceandfire:myrmex_desert_egg>,
<iceandfire:myrmex_desert_egg:2>,
<iceandfire:myrmex_desert_egg:4>,
<iceandfire:myrmex_jungle_egg:1>,
<iceandfire:myrmex_jungle_egg:2>,
<iceandfire:myrmex_jungle_egg:3>,
<iceandfire:myrmex_jungle_egg:4>,
<iceandfire:myrmex_desert_egg:1>,
<iceandfire:myrmex_desert_egg:3>,
<iceandfire:myrmex_desert_staff>,
<iceandfire:myrmex_jungle_staff>,
<iceandfire:myrmex_jungle_egg>
 ] as IItemStack[];
//<iceandfire:myrmex_desert_swarm>,
//<iceandfire:myrmex_jungle_swarm>

for item in item3summspec {
    mods.compatskills.Requirement.addRequirement(item, "trait|compatskills:beast");
}


val itemdrake= [
<iceandfire:dragon_stick>,
<iceandfire:sickly_dragon_meal>,
<iceandfire:dragon_horn>,
<iceandfire:dragon_flute>,
<iceandfire:dragon_meal>,
<iceandfire:fire_stew>,
<iceandfire:frost_stew>
 ] as IItemStack[];

for item in itemdrake {
    mods.compatskills.Requirement.addRequirement(item, "trait|compatskills:dragonraider");
}



val itembest= [
<iceandfire:hippogryph_egg>,
<iceandfire:hippogryph_egg:1>,
<iceandfire:hippogryph_egg:2>,
<iceandfire:hippogryph_egg:3>,
<iceandfire:hippogryph_egg:4>,
<iceandfire:hippogryph_egg:5>,
<iceandfire:hippogryph_egg:6>
 ] as IItemStack[];

for item in itembest {
    mods.compatskills.Requirement.addRequirement(item, "trait|compatskills:beast");
}
mods.compatskills.Requirement.addRequirement(<iceandfire:rotten_egg>, "trait|compatskills:beast");


val itembow= [
<minecraft:bow>,
<endreborn:ender_bow>,
<iceandfire:dragonbone_bow>,
<spartanfire:longbow_dragonbone>,
<spartanfire:longbow_fire_dragonbone>,
<spartanfire:longbow_ice_dragonbone>,
<spartanfire:longbow_jungle>,
<spartanfire:longbow_desert>,
<spartanfire:longbow_jungle_venom>,
<spartanfire:longbow_desert_venom>,
<spartandefiled:longbow_umbrium>,
<spartanweaponryarcana:longbow_thaumium>,
<spartanweaponry:longbow_wood>,
<spartanweaponry:longbow_bronze>,
<spartanweaponry:longbow_steel>,
<spartanweaponry:longbow_leather>,
<spartanweaponry:longbow_iron>,
<spartanweaponry:longbow_diamond>,
<spartanweaponry:longbow_silver>
 ] as IItemStack[];
/*
<spartanweaponryarcana:longbow_thaumium>
<spartanfire:longbow_ice_dragonsteel>,
<spartanfire:longbow_fire_dragonsteel>,*/
for item in itembow {
    mods.compatskills.Requirement.addRequirement(item, "and|[reskillable:agility|8]~[trait|compatskills:archery]");
}

val item_bow_12 = [
<spartanweaponryarcana:longbow_voidmetal>,
<spartanweaponryarcana:crossbow_voidmetal>
] as IItemStack[];
for item in item_bow_12 {
    mods.compatskills.Requirement.addRequirement(item, "and|[reskillable:agility|32]~[trait|compatskills:archery]");
}

val itemcbow= [
<spartanfire:crossbow_dragonbone>,
<spartanfire:crossbow_fire_dragonbone>,
<spartanfire:crossbow_ice_dragonbone>,
<spartanfire:crossbow_jungle>,
<spartanfire:crossbow_desert>,
<spartanfire:crossbow_jungle_venom>,
<spartanfire:crossbow_desert_venom>,
<spartandefiled:crossbow_umbrium>,
<spartanweaponryarcana:crossbow_thaumium>,
<spartanweaponry:crossbow_wood>,
<spartanweaponry:crossbow_bronze>,
<spartanweaponry:crossbow_leather>,
<spartanweaponry:crossbow_iron>,
<spartanweaponry:crossbow_diamond>,
<spartanweaponry:crossbow_silver>,
<spartanweaponry:crossbow_steel>


 ] as IItemStack[];
/*
<spartanweaponryarcana:crossbow_thaumium>
<spartanfire:crossbow_ice_dragonsteel>,
<spartanfire:crossbow_fire_dragonsteel>,
*/
for item in itemcbow {
    mods.compatskills.Requirement.addRequirement(item, "and|[reskillable:agility|20]~[trait|compatskills:archery]");
}

val itemcbaubleagi= [
<spartanweaponry:quiver_arrow>,
<spartanweaponry:quiver_arrow_moderate>,
<spartanweaponry:quiver_arrow_heavy>,
<spartanweaponry:quiver_bolt>,
<spartanweaponry:quiver_bolt_moderate>,
<spartanweaponry:quiver_bolt_heavy>,
<toolbelt:belt>
 ] as IItemStack[];

for item in itemcbaubleagi {
    mods.compatskills.Requirement.addRequirement(item, "reskillable:agility|12");
}

mods.compatskills.Requirement.addRequirement(<minecraft:arrow>, "and|[reskillable:attack|8]~[trait|compatskills:archery]");
mods.compatskills.Requirement.addRequirement(<spartanweaponry:arrow_iron>, "and|[reskillable:attack|16]~[trait|compatskills:archery]");
mods.compatskills.Requirement.addRequirement(<spartanweaponry:arrow_diamond>, "and|[reskillable:attack|32]~[trait|compatskills:archeryII]");
mods.compatskills.Requirement.addRequirement(<switchbow:switchbow>, "and|[reskillable:attack|32]~[trait|compatskills:archeryII]");
mods.compatskills.Requirement.addRequirement(<switchbow:switchcrossbow>, "and|[reskillable:attack|32]~[trait|compatskills:archeryII]");
mods.compatskills.Requirement.addRequirement(<srparasites:weapon_bow>, "and|[reskillable:attack|32]~[trait|compatskills:archeryII]");
mods.compatskills.Requirement.addRequirement(<srparasites:weapon_bow_sentient>, "and|[reskillable:attack|32]~[trait|compatskills:archeryII]");
mods.compatskills.Requirement.addRequirement(<spartanweaponry:arrow_explosive>, "and|[reskillable:attack|32]~[trait|compatskills:archeryII]");
mods.compatskills.Requirement.addRequirement(<spartanweaponry:bolt>, "and|[reskillable:attack|8]~[trait|compatskills:archery]");
mods.compatskills.Requirement.addRequirement(<spartanweaponry:bolt_diamond>, "and|[reskillable:attack|16]~[trait|compatskills:archery]");
mods.compatskills.Requirement.addRequirement(<spartanweaponry:bolt_spectral>, "and|[reskillable:attack|32]~[trait|compatskills:archeryII]");

#beastmaster
val itemtreatd= [
<lycanitesmobs:soulstone_demon>,
<lycanitesmobs:soulstone_undead>,
<lycanitesmobs:soulstone_imp>,
<lycanitesmobs:soulstone_aquatic>,
<lycanitesmobs:soulstone_dragon>,
<lycanitesmobs:soulstone_aberration>,
<lycanitesmobs:soulstone>,
<lycanitesmobs:soulstone_plant>,
<lycanitesmobs:soulstone_worm>,
<lycanitesmobs:soulstone_angel>,
<lycanitesmobs:soulstone_avian>,
<lycanitesmobs:soulstone_arachnid>,
<lycanitesmobs:soulstone_elemental>,
<lycanitesmobs:soulstone_reptile>,
<lycanitesmobs:soulstone_anthronian>,
<lycanitesmobs:soulstone_golem>,
<lycanitesmobs:soulstone_insect>,
<lycanitesmobs:soulstone_amphibian>,
<lycanitesmobs:soulstone_slime>,
<lycanitesmobs:soulstone_beast>
 ] as IItemStack[];
/*
<lycanitesmobs:soulstone_brute>,
<lycanitesmobs:soulstone_arthropod>,
*/

for item in itemtreatd {
    mods.compatskills.Requirement.addRequirement(item, "and|[reskillable:magic|32]~[trait|compatskills:dragonraider]");
}

mods.compatskills.Requirement.addRequirement(<lycanitesmobs:dragontreat>, "trait|compatskills:dragonraider");

val itemtreatn= [
<lycanitesmobs:planttreat>,
<lycanitesmobs:undeadtreat>,
<lycanitesmobs:demontreat>,
<lycanitesmobs:imptreat>,
<lycanitesmobs:aberrationtreat>,
<lycanitesmobs:aviantreat>,
<lycanitesmobs:slimetreat>,
<lycanitesmobs:elementaltreat>,
<lycanitesmobs:insecttreat>,
<lycanitesmobs:halloweentreat>,
<lycanitesmobs:angeltreat>,
<lycanitesmobs:anthroniantreat>,
<lycanitesmobs:golemtreat>,
<lycanitesmobs:amphibiantreat>,
<lycanitesmobs:arachnidtreat>,
<lycanitesmobs:reptiletreat>,
<lycanitesmobs:wormtreat>,
<lycanitesmobs:aquatictreat>
 ] as IItemStack[];
/*
<lycanitesmobs:brutetreat>,
<lycanitesmobs:arthropodtreat>,

*/
for item in itemtreatn {
    mods.compatskills.Requirement.addRequirement(item, "trait|compatskills:beast");
}

val itemtreatdsumm= [
<lycanitesmobs:bloodsummoningstaff>,
<lycanitesmobs:summoningstaff>,
<lycanitesmobs:stablesummoningstaff>,
<lycanitesmobs:savagesummoningstaff>,
<lycanitesmobs:sturdysummoningstaff>,
<lycanitesmobs:summoningpedestal>
 ] as IItemStack[];

for item in itemtreatdsumm {
    mods.compatskills.Requirement.addRequirement(item, "and|[reskillable:magic|20]~[trait|compatskills:beast]");
}


mods.compatskills.Requirement.addRequirement(<lycanitesmobs:beasttreat>, "trait|compatskills:tamer");

#tameable
mods.compatskills.AnimalTameLock.addTameLock(<entity:minecraft:wolf>, "trait|compatskills:tamer");
mods.compatskills.AnimalTameLock.addTameLock(<entity:iceandfire:hippocampus>, "trait|compatskills:tamer");
mods.compatskills.AnimalTameLock.addTameLock(<entity:minecraft:horse>, "trait|compatskills:tamer");

mods.compatskills.AnimalTameLock.addTameLock(<entity:iceandfire:hippogryph>, "trait|compatskills:beast");
mods.compatskills.AnimalTameLock.addTameLock(<entity:iceandfire:amphithere>, "trait|compatskills:beast");

#alchemist

val alchitem= [
<minecraft:brewing_stand>,
<potionfingers:ring:1>
 ] as IItemStack[];

for item in alchitem {
    mods.compatskills.Requirement.addRequirement(item, "and|[trait|compatskills:alch]~[reskillable:magic|12]");
}

val tcinter= [
<thaumcraft:spa>,
<thaumcraft:infusion_matrix>,
<thaumcraft:arcane_workbench>,
<thaumcraft:thaumatorium>,
<thaumcraft:smelter_basic>,
<thaumcraft:smelter_thaumium>,
<thaumcraft:smelter_void>,
<thaumcraft:crucible>,
<thaumcraft:tube_valve>,
<thaumcraft:jar_void>,
<thaumcraft:jar_normal>
 ] as IItemStack[];

for item in tcinter{
    mods.compatskills.Requirement.addRequirement(item, "and|[trait|compatskills:thaum]~[reskillable:magic|8]");
}

val tc1= [
<thaumcraft:thaumonomicon>,
<thaumcraft:research_table>,
<thaumcraft:infernal_furnace>,
<thaumicaugmentation:augment_caster_rift_energy_storage>,
<thaumcraft:salis_mundus>,
<thaumcraft:pech_wand>,
<thaumcraft:curio:6>,
<thaumcraft:curio:4>,
<thaumcraft:curio:3>,
<thaumcraft:curio:2>,
<thaumcraft:curio>,
<thaumcraft:curio:5>,
<thaumcraft:curio:1>,
<thaumcraft:sanity_soap>,
<thaumcraft:bottle_taint>,
<thaumcraft:resonator>,
<thaumcraft:thaumometer>,
<thaumcraft:dioptra>,
<thaumcraft:pattern_crafter>,
<thaumcraft:potion_sprayer>,
<thaumcraft:goggles>,
<thaumcraft:cloth_boots>,
<thaumcraft:cloth_legs>,
<thaumcraft:cloth_chest>
 ] as IItemStack[];

for item in tc1{
    mods.compatskills.Requirement.addRequirement(item, "and|[trait|compatskills:thaum]~[reskillable:magic|8]");
}

mods.compatskills.Requirement.addRequirement(<thaumcraft:golem_bell>, "and|[trait|compatskills:gol]~[reskillable:magic|8]");
mods.compatskills.Requirement.addRequirement(<thaumcraft:golem_builder>, "and|[trait|compatskills:gol]~[reskillable:magic|8]");
mods.compatskills.Requirement.addRequirement(<thaumcraft:wand_workbench>, "and|[trait|compatskills:caster]~[reskillable:magic|20]");
mods.compatskills.Requirement.addRequirement(<thaumcraft:turret>, "and|[trait|compatskills:gol]~[reskillable:magic|8]");
mods.compatskills.Requirement.addRequirement(<thaumcraft:turret:1>, "and|[trait|compatskills:gol]~[reskillable:magic|8]");


val tc2= [
<thaumcraft:crimson_robe_legs>,
<thaumcraft:crimson_plate_legs>,
<thaumcraft:crimson_boots>,
<thaumcraft:crimson_robe_chest>,
<thaumcraft:crimson_robe_helm>,
<thaumcraft:crimson_praetor_legs>,
<thaumcraft:crimson_praetor_chest>,
<thaumcraft:crimson_praetor_helm>,
<thaumcraft:crimson_plate_chest>,
<thaumcraft:crimson_plate_helm>,
<thaumcraft:traveller_boots>
 ] as IItemStack[];

for item in tc2{
    mods.compatskills.Requirement.addRequirement(item, "and|[trait|compatskills:thaum]~[reskillable:defense|12]");
}




val tc3= [
<thaumcraft:fortress_chest>,
<thaumcraft:fortress_helm>,
<thaumcraft:fortress_legs>
 ] as IItemStack[];

for item in tc3{
    mods.compatskills.Requirement.addRequirement(item, "and|[trait|compatskills:tha]~[reskillable:defense|16]");
}

mods.compatskills.Requirement.addRequirement(<thaumcraft:thaumium_sword>, "and|[trait|compatskills:thaum]~[reskillable:attack|12]");
mods.compatskills.Requirement.addRequirement(<thaumcraft:elemental_sword>, "and|[trait|compatskills:ench]~[reskillable:attack|20]");
mods.compatskills.Requirement.addRequirement(<thaumcraft:caster_basic>, "and|[trait|compatskills:thaum]~[reskillable:attack|16]");
mods.compatskills.Requirement.addRequirement(<thaumicaugmentation:gauntlet>, "and|[trait|compatskills:caster]~[reskillable:attack|20]");

val tc4= [
<thaumcraft:verdant_charm>,
<thaumcraft:curiosity_band>,
<thaumcraft:cloud_ring>,
<thaumcraft:charm_undying>,
<thaumcraft:verdant_charm>,
<thaumcraft:verdant_charm>,
<thaumcraft:baubles:3>,
<thaumcraft:amulet_vis>
 ] as IItemStack[];

for item in tc4{
    mods.compatskills.Requirement.addRequirement(item, "and|[trait|compatskills:bauble]~[reskillable:magic|20]");
}

val tccaster=[
<thaumcraft:focus_pouch>,
<thaumcraft:focus_1>,
<thaumcraft:focus_2>,
<thaumcraft:focus_3>,
<thaumicaugmentation:focus_ancient>

] as IItemStack[];

for item in tccaster{
    mods.compatskills.Requirement.addRequirement(item, "and|[trait|compatskills:caster]~[reskillable:magic|16]");
}

mods.compatskills.Requirement.addRequirement(<thaumicaugmentation:gauntlet:1>, "and|[trait|compatskills:caster]~[reskillable:attack|28]");
val tcv2= [
<thaumcraft:void_sword>,
<thaumcraft:crimson_blade>,
<thaumicaugmentation:primal_cutter>,
<thaumicaugmentation:impulse_cannon>
 ] as IItemStack[];
/* 
<spartanweaponryarcana:throwing_knife_voidmetal>,
<spartanweaponryarcana:throwing_axe_voidmetal>,
<spartanweaponryarcana:javelin_voidmetal>,
<spartanweaponryarcana:boomerang_voidmetal>,
<spartanweaponryarcana:battleaxe_voidmetal>,
<spartanweaponryarcana:mace_voidmetal>,
<spartanweaponryarcana:glaive_voidmetal>,
<spartanweaponryarcana:staff_voidmetal>,
<spartanweaponryarcana:spear_voidmetal>,
<spartanweaponryarcana:warhammer_voidmetal>,
<spartanweaponryarcana:hammer_voidmetal>,
<spartanweaponryarcana:greatsword_voidmetal>,
<spartanweaponryarcana:dagger_voidmetal>,
<spartanweaponryarcana:longsword_voidmetal>,
<spartanweaponryarcana:katana_voidmetal>,
<spartanweaponryarcana:saber_voidmetal>,
<spartanweaponryarcana:rapier_voidmetal>,
<spartanweaponryarcana:halberd_voidmetal>,
<spartanweaponryarcana:pike_voidmetal>,
<spartanweaponryarcana:lance_voidmetal>,
*/
for item in tcv2{
    mods.compatskills.Requirement.addRequirement(item, "and|[trait|compatskills:thw]~[reskillable:attack|32]");
}

mods.compatskills.Requirement.addRequirement(<thaumcraft:voidseer_charm>, "and|[trait|compatskills:vthaum]~[reskillable:magic|20]");


val tcv3= [
<thaumicaugmentation:void_boots>,
<thaumcraft:void_robe_legs>,
<thaumcraft:void_robe_chest>,
<thaumcraft:void_robe_helm>,
<thaumcraft:void_boots>,
<thaumcraft:void_legs>,
<thaumcraft:void_chest>,
<thaumcraft:void_helm>
 ] as IItemStack[];

for item in tcv3{
    mods.compatskills.Requirement.addRequirement(item, "and|[trait|compatskills:thva]~[reskillable:defense|32]");
}
mods.compatskills.Requirement.addRequirement(<thaumicaugmentation:thaumostatic_harness>, "and|[trait|compatskills:fly]~[reskillable:agility|32]");
mods.compatskills.Requirement.addRequirement(<thaumicaugmentation:elytra_harness>, "and|[trait|compatskills:fly]~[reskillable:agility|32]");
/*
#Engineer

val fly_ship_1 = [
<vs_world:valkyrium_ore>,
<vs_world:valkyrium_crystal>,
<vs_control:gyroscope_dampener>,
<vs_control:compacted_valkyrium>,
<vs_control:gyroscope_stabilizer>,
<vs_control:elite_engine>,
<vs_control:advanced_engine>,
<vs_control:basic_engine>,
<vs_control:physics_infuser>,
<vs_control:physics_core>,
<vs_control:redstone_engine>,
<malisisswitches:greenstone_dust>,
<malisisswitches:powerlinker>,
<malisisswitches:basicswitch1>,
<malisisswitches:lightswitch1>,
<malisisswitches:relay>
] as IItemStack[];

for item in fly_ship_1 {
	mods.compatskills.Requirement.addRequirement(item, "trait|compatskills:flying_machine_t1");
}


val fly_ship_2 = [
<vs_control:lift_lever>,
<vs_control:network_display>,
<vs_control:network_relay>,
<vs_control:speed_telegraph>,
<vs_control:ship_helm>,
<vs_control:ultimate_engine>,
<vs_control:vs_wrench>,
<vs_control:vanishing_wire>,
<vs_control:relay_wire>,
<valkyrienskies:vs_ship_tracker>,
<valkyrienskies:vs_water_pump>,
<vs_control:gearbox>,
<vs_control:giant_propeller_part>,
<vs_control:rotation_axle>,
<vs_control:rudder_part>,
<vs_control:valkyrium_engine_part>,
<vs_control:valkyrium_compressor_part>
] as IItemStack[];

for item in fly_ship_2 {
	mods.compatskills.Requirement.addRequirement(item, "trait|compatskills:flying_machine_t2");
}

val gunner_1 = [
	<cgm:scope>,
	<cgm:shotgun>,
	<cgm:machine_pistol>,
	<cgm:handgun>
] as IItemStack[];

for item in gunner_1 {
	mods.compatskills.Requirement.addRequirement(item, "trait|compatskills:guns_t1");
}

val gunner_2 = [
	<advancedrifles:revolver>,
	<advancedrifles:shotgun_doublebarrel>,
	<cgm:rifle>,
	<cgm:assault_rifle>,
	<cgm:scope:1>
] as IItemStack[];

for item in gunner_2 {
	mods.compatskills.Requirement.addRequirement(item, "trait|compatskills:guns_t2");
}

val gunner_3 = [
	<advancedrifles:assault_rifle_mk2>,
	<advancedrifles:shotgun_mk2>,
	<advancedrifles:mp5>,
	<cgm:grenade_launcher>,
	<cgm:scope:2>
] as IItemStack[];

for item in gunner_3 {
	mods.compatskills.Requirement.addRequirement(item, "trait|compatskills:guns_t3");
}

val gunner_4 = [
	<cgm:silencer>,
	<advancedrifles:shotgun_auto>,
	<advancedrifles:revolver_mk2>,
	<advancedrifles:rifle_advanced>,
	<advancedrifles:assault_rifle_advanced>
] as IItemStack[];

for item in gunner_4 {
	mods.compatskills.Requirement.addRequirement(item, "trait|compatskills:guns_t4");
}

val gunner_4_bom = [
	<advancedrifles:grenade_launcher_advanced>,
	<cgm:chain_gun>,
	<cgm:bazooka>
] as IItemStack[];

for item in gunner_4_bom {
	mods.compatskills.Requirement.addRequirement(item, "trait|compatskills:guns_t4_bom");
}






*/


mods.compatskills.Thaumcraft.addResearchLock("FOCUSCLOUD", "dim|4");
mods.compatskills.Thaumcraft.addResearchLock("FOCUSHEAL", "dim|4");
mods.compatskills.Thaumcraft.addResearchLock("FOCUSRIFT", "dim|4");
mods.compatskills.Thaumcraft.addResearchLock("RUNICSHIELDING", "trait|compatskills:sheildench");