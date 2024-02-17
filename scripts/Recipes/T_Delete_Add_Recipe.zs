import crafttweaker.item.IItemStack as IItemStack;
import mods.jei.JEI.removeAndHide as rh;

<minecraft:ender_pearl>.maxStackSize = 64;
<minecraft:egg>.maxStackSize = 64;
/*
rh(<cavern:ice_sword>);
mods.jei.JEI.removeAndHide(<cavern:ice_pickaxe>);
mods.jei.JEI.removeAndHide(<cavern:ice_axe>);
mods.jei.JEI.removeAndHide(<cavern:ice_shovel>);
mods.jei.JEI.removeAndHide(<cavern:ice_hoe>);
mods.jei.JEI.removeAndHide(<cavern:ice_bow>);
mods.jei.JEI.removeAndHide(<cavern:cavenic_sword>);
mods.jei.JEI.removeAndHide(<cavern:cavenic_axe>);
mods.jei.JEI.removeAndHide(<cavern:cavenic_bow>);
*/
val itemtodelete= [
<minecraft:shield>,
<lycanitesmobs:equipmentforge_greater>,
<lycanitesmobs:equipmentforge_master>,
<lycanitesmobs:equipmentforge_lesser>,
<lycanitesmobs:woodenhilt>,
<lycanitesmobs:ironpikejoint>,
<lycanitesmobs:ironhilt>,
<lycanitesmobs:ironaxehead>,
<lycanitesmobs:ironrod>,
<lycanitesmobs:ironpaxel>,
<bountifulbaubles:wormholemirror>,
<bountifulbaubles:trinketbrokenheart>,
<bountifulbaubles:trinketluckyhorseshoe>,
<xat:weightless_stone>,
<xat:arcing_orb>,
<xat:polarized_stone>,
<xat:greater_inertia_stone>,
<xat:inertia_null_stone>,
<xat:wither_ring>,
<bountifulbaubles:amuletcross>,
<bountifulbaubles:phantomprism>,
<bountifulbaubles:ringflywheeladvanced>,
<bountifulbaubles:ringflywheel>,
<bountifulbaubles:ringiron>,
<bountifulbaubles:magicmirror>,
<firstaid:morphine>,
<firstaid:plaster>,
<firstaid:bandage>,
<mujmajnkraftsbettersurvival:itemwooddagger>,
<mujmajnkraftsbettersurvival:itemstonedagger>,
<mujmajnkraftsbettersurvival:itemirondagger>,
<mujmajnkraftsbettersurvival:itemdiamonddagger>,
<mujmajnkraftsbettersurvival:itemgolddagger>,
<mujmajnkraftsbettersurvival:itembronzedagger>,
<mujmajnkraftsbettersurvival:itemsteeldagger>,
<mujmajnkraftsbettersurvival:itemsilverdagger>,
<mujmajnkraftsbettersurvival:itemdragonbonedagger>,
<mujmajnkraftsbettersurvival:itemfiredragonbonedagger>,
<mujmajnkraftsbettersurvival:itemicedragonbonedagger>,
<mujmajnkraftsbettersurvival:itemjunglechitindagger>,
<mujmajnkraftsbettersurvival:itemdesertchitindagger>
 ] as IItemStack[];
/*

<spartanweaponryarcana:greatsword_elementium>,
<spartanweaponryarcana:throwing_knife_elementium>,
<spartanweaponryarcana:throwing_axe_elementium>,
<spartanweaponryarcana:javelin_elementium>,
<spartanweaponryarcana:boomerang_elementium>,
<spartanweaponryarcana:battleaxe_elementium>,
<spartanweaponryarcana:mace_elementium>,
<spartanweaponryarcana:glaive_elementium>,
<spartanweaponryarcana:staff_elementium>,
<spartanweaponryarcana:dagger_elementium>,
<spartanweaponryarcana:longsword_elementium>,
<spartanweaponryarcana:katana_elementium>,
<spartanweaponryarcana:saber_elementium>,
<spartanweaponryarcana:rapier_elementium>,
<spartanweaponryarcana:crossbow_elementium>,
<spartanweaponryarcana:longbow_elementium>,
<spartanweaponryarcana:lance_elementium>,
<spartanweaponryarcana:pike_elementium>,
<spartanweaponryarcana:halberd_elementium>,
<spartanweaponryarcana:spear_elementium>,
<spartanweaponryarcana:warhammer_elementium>,
<spartanweaponryarcana:hammer_elementium>,
<spartanweaponryarcana:crossbow_terrasteel>,
<spartanweaponryarcana:throwing_knife_terrasteel>,
<spartanweaponryarcana:throwing_axe_terrasteel>,
<spartanweaponryarcana:javelin_terrasteel>,
<spartanweaponryarcana:boomerang_terrasteel>,
<spartanweaponryarcana:battleaxe_terrasteel>,
<spartanweaponryarcana:mace_terrasteel>,
<spartanweaponryarcana:glaive_terrasteel>,
<spartanweaponryarcana:staff_terrasteel>,
<spartanweaponryarcana:spear_terrasteel>,
<spartanweaponryarcana:warhammer_terrasteel>,
<spartanweaponryarcana:hammer_terrasteel>,
<spartanweaponryarcana:greatsword_terrasteel>,
<spartanweaponryarcana:dagger_terrasteel>,
<spartanweaponryarcana:longsword_terrasteel>,
<spartanweaponryarcana:katana_terrasteel>,
<spartanweaponryarcana:saber_terrasteel>,
<spartanweaponryarcana:rapier_terrasteel>,
<spartanweaponryarcana:halberd_terrasteel>,
<spartanweaponryarcana:pike_terrasteel>,
<spartanweaponryarcana:lance_terrasteel>,
<spartanweaponryarcana:longbow_terrasteel>,
<spartanweaponryarcana:crossbow_manasteel>,
<spartanweaponryarcana:throwing_knife_manasteel>,
<spartanweaponryarcana:throwing_axe_manasteel>,
<spartanweaponryarcana:javelin_manasteel>,
<spartanweaponryarcana:boomerang_manasteel>,
<spartanweaponryarcana:battleaxe_manasteel>,
<spartanweaponryarcana:mace_manasteel>,
<spartanweaponryarcana:glaive_manasteel>,
<spartanweaponryarcana:staff_manasteel>,
<spartanweaponryarcana:spear_manasteel>,
<spartanweaponryarcana:warhammer_manasteel>,
<spartanweaponryarcana:hammer_manasteel>,
<spartanweaponryarcana:greatsword_manasteel>,
<spartanweaponryarcana:dagger_manasteel>,
<spartanweaponryarcana:longsword_manasteel>,
<spartanweaponryarcana:katana_manasteel>,
<spartanweaponryarcana:saber_manasteel>,
<spartanweaponryarcana:rapier_manasteel>,
<spartanweaponryarcana:halberd_manasteel>,
<spartanweaponryarcana:pike_manasteel>,
<spartanweaponryarcana:lance_manasteel>,
<spartanweaponryarcana:longbow_manasteel>,
<spartanweaponryarcana:crossbow_dawnstone>,
<spartanweaponryarcana:throwing_knife_dawnstone>,
<spartanweaponryarcana:throwing_axe_dawnstone>,
<spartanweaponryarcana:javelin_dawnstone>,
<spartanweaponryarcana:boomerang_dawnstone>,
<spartanweaponryarcana:battleaxe_dawnstone>,
<spartanweaponryarcana:mace_dawnstone>,
<spartanweaponryarcana:glaive_dawnstone>,
<spartanweaponryarcana:staff_dawnstone>,
<spartanweaponryarcana:spear_dawnstone>,
<spartanweaponryarcana:warhammer_dawnstone>,
<spartanweaponryarcana:hammer_dawnstone>,
<spartanweaponryarcana:greatsword_dawnstone>,
<spartanweaponryarcana:dagger_dawnstone>,
<spartanweaponryarcana:longsword_dawnstone>,
<spartanweaponryarcana:katana_dawnstone>,
<spartanweaponryarcana:saber_dawnstone>,
<spartanweaponryarcana:rapier_dawnstone>,
<spartanweaponryarcana:halberd_dawnstone>,
<spartanweaponryarcana:pike_dawnstone>,
<spartanweaponryarcana:lance_dawnstone>,
<spartanweaponryarcana:longbow_dawnstone>,
<spartanweaponryarcana:crossbow_voidmetal>,
<spartanweaponryarcana:longbow_voidmetal>,
<spartanweaponryarcana:material:3>,
<spartanweaponryarcana:material:2>,
<spartanweaponryarcana:material:4>,
<spartanweaponryarcana:material:1>,
<spartanweaponryarcana:material>
*/


for item in itemtodelete {
    rh(item);
}



recipes.removeByRecipeName("spartanweaponry:arrow_diamond");
recipes.addShaped("CTspartanweaponryarrowdiamond", <spartanweaponry:arrow_diamond> * 16, [[null, <ore:gemDiamond>, null], [null, <iceandfire:dragonbone>, null], [null, <ore:feather>, null]]);
recipes.removeByRecipeName("spartanweaponry:arrow_wood");
recipes.addShaped("CTspartanweaponryarrowwood", <spartanweaponry:arrow_wood> * 2, [[null, <ore:plankWood>, null], [null, <ore:stickWood>, null], [null, <ore:feather>, null]]);
recipes.removeByRecipeName("spartanweaponry:arrow_iron");
recipes.addShaped("CTspartanweaponryarrowiron", <spartanweaponry:arrow_iron> * 8, [[null, <ore:ingotIron>, null], [null, <ore:stickWood>, null], [null, <ore:feather>, null]]);

recipes.removeByRecipeName("spartanweaponry:bolt_spectral");
recipes.removeByRecipeName("spartanweaponry:bolt");
recipes.addShaped("CTspartanweaponry_bolt", <spartanweaponry:bolt> * 8, [[null, null, <ore:ingotIron>], [null, <ore:nuggetIron>, null], [<ore:feather>, null, null]]);
recipes.removeByRecipeName("spartanweaponry:bolt_diamond");
recipes.addShaped("CTspartanweaponry_bolt_diamond", <spartanweaponry:bolt_diamond> * 16, [[null, null, <ore:gemDiamond>], [<ore:nuggetIron>, <iceandfire:dragonbone>, <ore:nuggetIron>], [<ore:feather>, null, null]]);


  var f=[<lycanitesmobs:scorchfireballcharge>, <lycanitesmobs:demonicblastcharge>, <lycanitesmobs:hellfireballcharge> , <lycanitesmobs:magmacharge> ,<lycanitesmobs:embercharge>] as IItemStack[];
for item in f{
    recipes.addShaped(<ebwizardry:spectral_dust:1> ,
 [[item,item,item],
  [<minecraft:blaze_powder>,<thaumcraft:salis_mundus>,<minecraft:blaze_powder>],
  [item,item,item]]);
}

var i=[<lycanitesmobs:poopcharge>,<lycanitesmobs:aquapulsecharge>,<lycanitesmobs:mudshotcharge>,<lycanitesmobs:poisonraycharge>,<lycanitesmobs:frostwebcharge>,<lycanitesmobs:tundracharge>,<lycanitesmobs:waterjetcharge>,<lycanitesmobs:blizzardcharge>,<lycanitesmobs:icefireballcharge>,<lycanitesmobs:venomshotcharge>,<lycanitesmobs:frostboltcharge>]as IItemStack[];
for item in i{
    recipes.addShaped(<ebwizardry:spectral_dust:2> ,
 [[item,item,item],
  [<minecraft:snowball>,<thaumcraft:salis_mundus>,<minecraft:snowball>],
  [item,item,item]]);
}

var l=[<lycanitesmobs:acidsplashcharge>,<lycanitesmobs:waterjetcharge>,<lycanitesmobs:scorchfireballcharge>,<lycanitesmobs:whirlwindcharge>,<lycanitesmobs:demonicblastcharge>] as IItemStack[];
for item in l{
    recipes.addShaped(<ebwizardry:spectral_dust:3> ,
 [[item,item,item],
  [item,<thaumcraft:salis_mundus>,item],
  [item,item,item]]);
}

var e=[<lycanitesmobs:lifedraincharge>,<lycanitesmobs:mudshotcharge>,<lycanitesmobs:throwingscythecharge>,<lycanitesmobs:boulderblastcharge>,<lycanitesmobs:arcanelaserstormcharge>] as IItemStack[];
for item in e{
    recipes.addShaped(<ebwizardry:spectral_dust:5> ,
 [[item,item,item],
  [<minecraft:stone>,<thaumcraft:salis_mundus>,<minecraft:stone>],
  [item,item,item]]);
}

var n=[<lycanitesmobs:spectralboltcharge>,<lycanitesmobs:hellfireballcharge>,<lycanitesmobs:lobdarklingscharge>,<lycanitesmobs:devilstarcharge>,<lycanitesmobs:doomfireballcharge>,<lycanitesmobs:arcanelaserstormcharge>]as IItemStack[];
for item in n{
    recipes.addShaped(<ebwizardry:spectral_dust:4> ,
 [[item,item,item],
  [<minecraft:rotten_flesh>,<thaumcraft:salis_mundus>,<minecraft:bone>],
  [item,item,item]]);
}

var h=[<lycanitesmobs:quillcharge>,<lycanitesmobs:faeboltcharge>,<lycanitesmobs:arcanelaserstormcharge>,<lycanitesmobs:tricksterflarecharge>,<lycanitesmobs:lightballcharge>] as IItemStack[];
for item in h{
    recipes.addShaped(<ebwizardry:spectral_dust:7> ,
 [[item,item,item],
  [<minecraft:speckled_melon>,<thaumcraft:salis_mundus>,<minecraft:speckled_melon>],
  [item,item,item]]);
}

var s=[<lycanitesmobs:crystalshardcharge>,<lycanitesmobs:throwingscythecharge>,<lycanitesmobs:spectralboltcharge>,<lycanitesmobs:aetherwavecharge>] as IItemStack[];
for item in s{
    recipes.addShaped(<ebwizardry:spectral_dust:6> ,
 [[item,item,item],
  [<minecraft:book>,<thaumcraft:salis_mundus>,<minecraft:book>],
  [item,item,item]]);
}
/*
recipes.addShaped(<cavern:mirage_book:6>, [[<minecraft:feather>, <minecraft:nether_star>, <minecraft:feather>],[<minecraft:stone>, <minecraft:book>, <minecraft:stone>], [<minecraft:stone>, <minecraft:ender_eye>, <minecraft:stone>]]);
recipes.addShaped(<cavern:mirage_book:5>, [[<minecraft:sapling:5>, <minecraft:nether_star>, <minecraft:sapling:5>],[<minecraft:dye>, <minecraft:book>, <minecraft:dye>], [<minecraft:sapling:5>, <minecraft:ender_eye>, <minecraft:sapling:5>]]);
recipes.addShaped(<cavern:mirage_book:4>, [[<thaumcraft:void_seed>, <minecraft:nether_star>, <thaumcraft:void_seed>],[null, <minecraft:book>, null], [<thaumcraft:void_seed>, <minecraft:ender_eye>, <thaumcraft:void_seed>]]);
recipes.addShaped(<cavern:mirage_book:3>, [[<minecraft:sand>, <minecraft:nether_star>, <minecraft:sand>],[<iceandfire:fire_lily>, <minecraft:book>, <iceandfire:fire_lily>], [<minecraft:sand>, <minecraft:ender_eye>, <minecraft:sand>]]);
recipes.addShaped(<cavern:mirage_book:2>, [[<minecraft:ice>, <minecraft:nether_star>, <minecraft:ice>],[<iceandfire:frost_lily>, <minecraft:book>, <iceandfire:frost_lily>], [<minecraft:ice>, <minecraft:ender_eye>, <minecraft:ice>]]);
recipes.addShaped(<cavern:mirage_book:1>, [[<minecraft:stone>, <minecraft:nether_star>, <minecraft:stone>],[<minecraft:obsidian>, <minecraft:book>, <minecraft:obsidian>], [<minecraft:stone>, <minecraft:ender_eye>, <minecraft:stone>]]);
recipes.addShaped(<cavern:mirage_book>, [[<minecraft:dirt>, <minecraft:nether_star>, <minecraft:dirt>],[<minecraft:obsidian>, <minecraft:book>, <minecraft:obsidian>], [<minecraft:dirt>, <minecraft:ender_eye>, <minecraft:dirt>]]);
*/
recipes.addShaped(<baubles:ring>, [[<minecraft:redstone>, <minecraft:iron_ingot>, <minecraft:redstone>],[<minecraft:iron_ingot>, <minecraft:iron_pickaxe>, <minecraft:iron_ingot>], [<minecraft:redstone>, <minecraft:iron_ingot>, <minecraft:redstone>]]);

recipes.addShaped("shheart",<scalinghealth:difficultychanger>, 
[[<minecraft:gold_ingot>, <scalinghealth:crystalshard>, <minecraft:gold_ingot>],
[<scalinghealth:crystalshard>, <xat:glowing_gem>, <scalinghealth:crystalshard>],
 [<minecraft:gold_ingot>,<scalinghealth:crystalshard> , <minecraft:gold_ingot>]]);


recipes.removeByRecipeName("realistictorches:matchbox_alt");
recipes.addShaped("CTrealistictorches_matchbox_alt", <realistictorches:matchbox>, 
[[<minecraft:paper>, <minecraft:paper>, <minecraft:paper>], 
[<ore:slabWood>, <ore:slabWood>, <ore:slabWood>]]);

recipes.removeByRecipeName("minecraft:daylight_detector");
recipes.addShaped("CTminecraft_daylight_detector", <minecraft:daylight_detector>, 
[[<ore:blockGlassColorless>, <ore:blockGlassColorless>, <ore:blockGlassColorless>],
[<minecraft:quartz>, <minecraft:quartz>, <minecraft:quartz>], 
[<ore:slabWood>, <ore:slabWood>, <ore:slabWood>]]);

recipes.removeByRecipeName("switchbow:arrowdispenser");
recipes.addShaped("CTswitchbow_arrowdispenser", <switchbow:arrowdispenser>, 
[[null, <ore:plankWood>, null], 
[<ore:plankWood>, <minecraft:dispenser>, <ore:plankWood>], 
[null, <ore:plankWood>, <minecraft:piston>]]);

//recipes.removeByRecipeName("valkyrienskies:recipe_passenger_chair");
//recipes.addShaped("CTvalkyrienskies_recipe_passenger_chair", <valkyrienskies:passenger_chair>, 
//[[<minecraft:stick:*>, <minecraft:leather:*>, <minecraft:stick:*>], 
//[<ore:plankWood>, <ore:logWood>, <ore:plankWood>], 
//[null, <minecraft:stick:*>, null]]);


recipes.addShaped("CTinksack", <minecraft:dye>, 
[[<minecraft:coal>, <minecraft:coal>, <minecraft:coal>], 
[<minecraft:coal>, <minecraft:fish>, <minecraft:coal>], 
[<minecraft:coal>, <minecraft:coal>, <minecraft:coal>]]);

recipes.removeByRecipeName("biomesoplenty:amber");

recipes.removeByRecipeName("steel_co:carbonizedironrecipe");

val steel = <ore:ingotSteel>;
steel.add(<steel_co:steel_ingot>);

val daggersList = [
<spartandefiled:dagger_umbrium>,
<spartanfire:dagger_dragonbone>,
<spartanfire:dagger_fire_dragonbone>,
<spartanfire:dagger_ice_dragonbone>,
<spartanfire:dagger_jungle>,
<spartanfire:dagger_desert>,
<spartanfire:dagger_jungle_venom>,
<spartanfire:dagger_desert_venom>,
<spartanweaponry:dagger_wood>,
<spartanweaponry:dagger_stone>,
<spartanweaponry:dagger_iron>,
<spartanweaponry:dagger_gold>,
<spartanweaponry:dagger_diamond>,
<spartanweaponry:dagger_bronze>,
<spartanweaponry:dagger_steel>,
<spartanweaponry:dagger_silver>,
<spartanweaponryarcana:dagger_thaumium>,
<spartanweaponryarcana:dagger_voidmetal>,
<spartanweaponryarcana:dagger_dawnstone>
] as IItemStack[];

<ore:daggerRogue>.addItems(daggersList);

val swordList = [
<variedcommodities:bronze_sword>,
<iceandfire:dragonbone_sword>,
<iceandfire:silver_sword>,
<endreborn:ender_sword>,
<endreborn:tool_sword_endorium>,
<steel_co:steel_sword>,
<thaumcraft:thaumium_sword>,
<thaumcraft:elemental_sword>,
<endreborn:tool_sword_wolframium>,
<minecraft:diamond_sword>,
<minecraft:golden_sword>,
<defiledlands:umbrium_sword>,
<aquaculture:neptunium_sword>,
<minecraft:stone_sword>,
<minecraft:wooden_sword>,
<minecraft:iron_sword>,
<srparasites:weapon_sword_sentient>,
<srparasites:weapon_sword>,
<netherbackport:netheritesword>,
<mysticalworld:amethyst_sword>,
<mysticalworld:silver_sword>,
<thaumcraft:void_sword>,
<mysticalworld:copper_sword>,
<iceandfire:myrmex_jungle_sword_venom>,
<iceandfire:myrmex_jungle_sword>,
<iceandfire:myrmex_desert_sword_venom>,
<iceandfire:myrmex_desert_sword>,
<iceandfire:dragonbone_sword_ice>,
<iceandfire:dragonbone_sword_fire>
] as IItemStack[];

<ore:swordMaster>.addItems(swordList);

val glaiveList = [
<spartandefiled:glaive_umbrium>,
<spartanfire:glaive_dragonbone>,
<spartanfire:glaive_ice_dragonbone>,
<spartanfire:glaive_fire_dragonbone>,
<spartanfire:glaive_jungle>,
<spartanfire:glaive_desert>,
<spartanfire:glaive_jungle_venom>,
<spartanfire:glaive_desert_venom>,
<spartanweaponry:glaive_wood>,
<spartanweaponry:glaive_stone>,
<spartanweaponry:glaive_iron>,
<spartanweaponry:glaive_gold>,
<spartanweaponry:glaive_diamond>,
<spartanweaponry:glaive_bronze>,
<spartanweaponry:glaive_steel>,
<spartanweaponry:glaive_silver>,
<spartanweaponryarcana:glaive_voidmetal>,
<spartanweaponryarcana:glaive_thaumium>,
<spartanweaponryarcana:glaive_dawnstone>
] as IItemStack[];

<ore:glaiveMaster>.addItems(glaiveList);

val staffList = [
<spartandefiled:staff_umbrium>,
<spartanfire:staff_dragonbone>,
<spartanfire:staff_fire_dragonbone>,
<spartanfire:staff_ice_dragonbone>,
<spartanfire:staff_jungle>,
<spartanfire:staff_desert>,
<spartanfire:staff_jungle_venom>,
<spartanfire:staff_desert_venom>,
<spartanweaponry:staff>,
<spartanweaponry:staff_stone>,
<spartanweaponry:staff_iron>,
<spartanweaponry:staff_gold>,
<spartanweaponry:staff_diamond>,
<spartanweaponry:staff_bronze>,
<spartanweaponry:staff_steel>,
<spartanweaponry:staff_silver>,
<spartanweaponryarcana:staff_thaumium>,
<spartanweaponryarcana:staff_voidmetal>,
<spartanweaponryarcana:staff_dawnstone>
] as IItemStack[];

<ore:staffMaster>.addItems(staffList);

val throwingKnifeList = [
<spartandefiled:throwing_knife_umbrium>,
<spartanfire:throwing_knife_dragonbone>,
<spartanfire:throwing_knife_fire_dragonbone>,
<spartanfire:throwing_knife_ice_dragonbone>,
<spartanfire:throwing_knife_jungle>,
<spartanfire:throwing_knife_desert>,
<spartanfire:throwing_knife_jungle_venom>,
<spartanfire:throwing_knife_desert_venom>,
<spartanweaponry:throwing_knife_wood>,
<spartanweaponry:throwing_knife_stone>,
<spartanweaponry:throwing_knife_iron>,
<spartanweaponry:throwing_knife_gold>,
<spartanweaponry:throwing_knife_diamond>,
<spartanweaponry:throwing_knife_bronze>,
<spartanweaponry:throwing_knife_steel>,
<spartanweaponry:throwing_knife_silver>,
<spartanweaponryarcana:throwing_knife_thaumium>,
<spartanweaponryarcana:throwing_knife_voidmetal>,
<spartanweaponryarcana:throwing_knife_dawnstone>
] as IItemStack[];

<ore:throwingKnifeMaster>.addItems(throwingKnifeList);

val throwingAxeList = [
<spartandefiled:throwing_axe_umbrium>,
<spartanfire:throwing_axe_dragonbone>,
<spartanfire:throwing_axe_fire_dragonbone>,
<spartanfire:throwing_axe_ice_dragonbone>,
<spartanfire:throwing_axe_jungle>,
<spartanfire:throwing_axe_desert>,
<spartanfire:throwing_axe_jungle_venom>,
<spartanfire:throwing_axe_desert_venom>,
<spartanweaponry:throwing_axe_wood>,
<spartanweaponry:throwing_axe_stone>,
<spartanweaponry:throwing_axe_iron>,
<spartanweaponry:throwing_axe_gold>,
<spartanweaponry:throwing_axe_diamond>,
<spartanweaponry:throwing_axe_bronze>,
<spartanweaponry:throwing_axe_steel>,
<spartanweaponry:throwing_axe_silver>,
<spartanweaponryarcana:throwing_axe_thaumium>,
<spartanweaponryarcana:throwing_axe_voidmetal>,
<spartanweaponryarcana:throwing_axe_dawnstone>
] as IItemStack[];

<ore:throwingAxeMaster>.addItems(throwingAxeList);

val javelinList = [
<spartandefiled:javelin_umbrium>,
<spartanfire:javelin_dragonbone>,
<spartanfire:javelin_fire_dragonbone>,
<spartanfire:javelin_ice_dragonbone>,
<spartanfire:javelin_jungle>,
<spartanfire:javelin_desert>,
<spartanfire:javelin_jungle_venom>,
<spartanfire:javelin_desert_venom>,
<spartanweaponry:javelin_wood>,
<spartanweaponry:javelin_stone>,
<spartanweaponry:javelin_iron>,
<spartanweaponry:javelin_gold>,
<spartanweaponry:javelin_diamond>,
<spartanweaponry:javelin_bronze>,
<spartanweaponry:javelin_steel>,
<spartanweaponry:javelin_silver>,
<spartanweaponryarcana:javelin_thaumium>,
<spartanweaponryarcana:javelin_voidmetal>,
<spartanweaponryarcana:javelin_dawnstone>
] as IItemStack[];

<ore:javelinMaster>.addItems(javelinList);

val boomerangList = [
<spartandefiled:boomerang_umbrium>,
<spartanfire:boomerang_dragonbone>,
<spartanfire:boomerang_fire_dragonbone>,
<spartanfire:boomerang_ice_dragonbone>,
<spartanfire:boomerang_jungle>,
<spartanfire:boomerang_desert>,
<spartanfire:boomerang_jungle_venom>,
<spartanfire:boomerang_desert_venom>,
<spartanweaponry:boomerang_wood>,
<spartanweaponry:boomerang_stone>,
<spartanweaponry:boomerang_iron>,
<spartanweaponry:boomerang_gold>,
<spartanweaponry:boomerang_diamond>,
<spartanweaponry:boomerang_bronze>,
<spartanweaponry:boomerang_steel>,
<spartanweaponry:boomerang_silver>,
<spartanweaponryarcana:boomerang_thaumium>,
<spartanweaponryarcana:boomerang_voidmetal>,
<spartanweaponryarcana:boomerang_dawnstone>
] as IItemStack[];

<ore:boomerangMaster>.addItems(boomerangList);

val maceList = [
<spartandefiled:mace_umbrium>,
<spartanfire:mace_dragonbone>,
<spartanfire:mace_fire_dragonbone>,
<spartanfire:mace_ice_dragonbone>,
<spartanfire:mace_jungle>,
<spartanfire:mace_desert>,
<spartanfire:mace_jungle_venom>,
<spartanfire:mace_desert_venom>,
<spartanweaponry:mace_wood>,
<spartanweaponry:mace_stone>,
<spartanweaponry:mace_iron>,
<spartanweaponry:mace_gold>,
<spartanweaponry:mace_diamond>,
<spartanweaponry:mace_bronze>,
<spartanweaponry:mace_steel>,
<spartanweaponry:mace_silver>,
<spartanweaponryarcana:mace_thaumium>,
<spartanweaponryarcana:mace_voidmetal>,
<spartanweaponryarcana:mace_dawnstone>
] as IItemStack[];

<ore:maceMaster>.addItems(maceList);

val battleaxeList = [
<mujmajnkraftsbettersurvival:itemwoodbattleaxe>,
<mujmajnkraftsbettersurvival:itemstonebattleaxe>,
<mujmajnkraftsbettersurvival:itemironbattleaxe>,
<mujmajnkraftsbettersurvival:itemdiamondbattleaxe>,
<mujmajnkraftsbettersurvival:itemgoldbattleaxe>,
<mujmajnkraftsbettersurvival:itembronzebattleaxe>,
<mujmajnkraftsbettersurvival:itemsteelbattleaxe>,
<mujmajnkraftsbettersurvival:itemsilverbattleaxe>,
<mujmajnkraftsbettersurvival:itemdragonbonebattleaxe>,
<mujmajnkraftsbettersurvival:itemfiredragonbonebattleaxe>,
<mujmajnkraftsbettersurvival:itemicedragonbonebattleaxe>,
<mujmajnkraftsbettersurvival:itemjunglechitinbattleaxe>,
<mujmajnkraftsbettersurvival:itemdesertchitinbattleaxe>,
<spartandefiled:battleaxe_umbrium>,
<spartanfire:battleaxe_dragonbone>,
<spartanfire:battleaxe_fire_dragonbone>,
<spartanfire:battleaxe_ice_dragonbone>,
<spartanfire:battleaxe_jungle>,
<spartanfire:battleaxe_desert>,
<spartanfire:battleaxe_jungle_venom>,
<spartanfire:battleaxe_desert_venom>,
<spartanweaponry:battleaxe_wood>,
<spartanweaponry:battleaxe_stone>,
<spartanweaponry:battleaxe_iron>,
<spartanweaponry:battleaxe_gold>,
<spartanweaponry:battleaxe_diamond>,
<spartanweaponry:battleaxe_bronze>,
<spartanweaponry:battleaxe_steel>,
<spartanweaponry:battleaxe_silver>,
<spartanweaponryarcana:battleaxe_thaumium>,
<spartanweaponryarcana:battleaxe_voidmetal>,
<spartanweaponryarcana:battleaxe_dawnstone>
] as IItemStack[];

<ore:battleaxeMaster>.addItems(battleaxeList);

val pikeList = [
<spartandefiled:pike_umbrium>,
<spartanfire:pike_dragonbone>,
<spartanfire:pike_fire_dragonbone>,
<spartanfire:pike_ice_dragonbone>,
<spartanfire:pike_jungle>,
<spartanfire:pike_desert>,
<spartanfire:pike_jungle_venom>,
<spartanfire:pike_desert_venom>,
<spartanweaponry:pike_wood>,
<spartanweaponry:pike_stone>,
<spartanweaponry:pike_iron>,
<spartanweaponry:pike_gold>,
<spartanweaponry:pike_diamond>,
<spartanweaponry:pike_bronze>,
<spartanweaponry:pike_steel>,
<spartanweaponry:pike_silver>,
<spartanweaponryarcana:pike_thaumium>,
<spartanweaponryarcana:pike_voidmetal>,
<spartanweaponryarcana:pike_dawnstone>
] as IItemStack[];

<ore:pikeMaster>.addItems(pikeList);

val halberdList = [
<spartandefiled:halberd_umbrium>,
<spartanfire:halberd_dragonbone>,
<spartanfire:halberd_fire_dragonbone>,
<spartanfire:halberd_ice_dragonbone>,
<spartanfire:halberd_jungle>,
<spartanfire:halberd_desert>,
<spartanfire:halberd_jungle_venom>,
<spartanfire:halberd_desert_venom>,
<spartanweaponry:halberd_wood>,
<spartanweaponry:halberd_stone>,
<spartanweaponry:halberd_iron>,
<spartanweaponry:halberd_gold>,
<spartanweaponry:halberd_diamond>,
<spartanweaponry:halberd_bronze>,
<spartanweaponry:halberd_steel>,
<spartanweaponry:halberd_silver>,
<spartanweaponryarcana:halberd_thaumium>,
<spartanweaponryarcana:halberd_voidmetal>,
<spartanweaponryarcana:halberd_dawnstone>
] as IItemStack[];

<ore:halberdMaster>.addItems(halberdList);

val spearList = [
<mujmajnkraftsbettersurvival:itemwoodspear>,
<mujmajnkraftsbettersurvival:itemstonespear>,
<mujmajnkraftsbettersurvival:itemironspear>,
<mujmajnkraftsbettersurvival:itemdiamondspear>,
<mujmajnkraftsbettersurvival:itemgoldspear>,
<mujmajnkraftsbettersurvival:itembronzespear>,
<mujmajnkraftsbettersurvival:itemsteelspear>,
<mujmajnkraftsbettersurvival:itemsilverspear>,
<mujmajnkraftsbettersurvival:itemdragonbonespear>,
<mujmajnkraftsbettersurvival:itemfiredragonbonespear>,
<mujmajnkraftsbettersurvival:itemicedragonbonespear>,
<mujmajnkraftsbettersurvival:itemjunglechitinspear>,
<mujmajnkraftsbettersurvival:itemdesertchitinspear>,
<spartandefiled:spear_umbrium>,
<spartanfire:spear_dragonbone>,
<spartanfire:spear_fire_dragonbone>,
<spartanfire:spear_ice_dragonbone>,
<spartanfire:spear_jungle>,
<spartanfire:spear_desert>,
<spartanfire:spear_jungle_venom>,
<spartanfire:spear_desert_venom>,
<spartanweaponry:spear_wood>,
<spartanweaponry:spear_stone>,
<spartanweaponry:spear_iron>,
<spartanweaponry:spear_gold>,
<spartanweaponry:spear_diamond>,
<spartanweaponry:spear_bronze>,
<spartanweaponry:spear_steel>,
<spartanweaponry:spear_silver>,
<spartanweaponryarcana:spear_thaumium>,
<spartanweaponryarcana:spear_voidmetal>,
<spartanweaponryarcana:spear_dawnstone>
] as IItemStack[];

<ore:spearMaster>.addItems(spearList);

val warhammerList = [
<spartandefiled:warhammer_umbrium>,
<spartanfire:warhammer_dragonbone>,
<spartanfire:warhammer_fire_dragonbone>,
<spartanfire:warhammer_ice_dragonbone>,
<spartanfire:warhammer_jungle>,
<spartanfire:warhammer_desert>,
<spartanfire:warhammer_jungle_venom>,
<spartanfire:warhammer_desert_venom>,
<spartanweaponry:warhammer_wood>,
<spartanweaponry:warhammer_stone>,
<spartanweaponry:warhammer_iron>,
<spartanweaponry:warhammer_gold>,
<spartanweaponry:warhammer_diamond>,
<spartanweaponry:warhammer_bronze>,
<spartanweaponry:warhammer_steel>,
<spartanweaponry:warhammer_silver>,
<spartanweaponryarcana:warhammer_thaumium>,
<spartanweaponryarcana:warhammer_voidmetal>,
<spartanweaponryarcana:warhammer_dawnstone>
] as IItemStack[];

<ore:warhammerMaster>.addItems(warhammerList);

val hammerList = [
<mujmajnkraftsbettersurvival:itemwoodhammer>,
<mujmajnkraftsbettersurvival:itemstonehammer>,
<mujmajnkraftsbettersurvival:itemironhammer>,
<mujmajnkraftsbettersurvival:itemdiamondhammer>,
<mujmajnkraftsbettersurvival:itemgoldhammer>,
<mujmajnkraftsbettersurvival:itembronzehammer>,
<mujmajnkraftsbettersurvival:itemsteelhammer>,
<mujmajnkraftsbettersurvival:itemsilverhammer>,
<mujmajnkraftsbettersurvival:itemdragonbonehammer>,
<mujmajnkraftsbettersurvival:itemfiredragonbonehammer>,
<mujmajnkraftsbettersurvival:itemicedragonbonehammer>,
<mujmajnkraftsbettersurvival:itemjunglechitinhammer>,
<mujmajnkraftsbettersurvival:itemdesertchitinhammer>,
<spartandefiled:hammer_umbrium>,
<spartanfire:hammer_dragonbone>,
<spartanfire:hammer_fire_dragonbone>,
<spartanfire:hammer_ice_dragonbone>,
<spartanfire:hammer_jungle>,
<spartanfire:hammer_desert>,
<spartanfire:hammer_jungle_venom>,
<spartanfire:hammer_desert_venom>,
<spartanweaponry:hammer_wood>,
<spartanweaponry:hammer_stone>,
<spartanweaponry:hammer_iron>,
<spartanweaponry:hammer_gold>,
<spartanweaponry:hammer_diamond>,
<spartanweaponry:hammer_bronze>,
<spartanweaponry:hammer_steel>,
<spartanweaponry:hammer_silver>,
<spartanweaponryarcana:hammer_thaumium>,
<spartanweaponryarcana:hammer_voidmetal>,
<spartanweaponryarcana:hammer_dawnstone>,
<spartanweaponryarcana:warhammer_thaumium>,
<spartanweaponryarcana:warhammer_voidmetal>,
<spartanweaponryarcana:warhammer_dawnstone>
] as IItemStack[];

<ore:hammerMaster>.addItems(hammerList);

val greatswordList = [
<spartandefiled:greatsword_umbrium>,
<spartanfire:greatsword_dragonbone>,
<spartanfire:greatsword_fire_dragonbone>,
<spartanfire:greatsword_ice_dragonbone>,
<spartanfire:greatsword_jungle>,
<spartanfire:greatsword_desert>,
<spartanfire:greatsword_jungle_venom>,
<spartanfire:greatsword_desert_venom>,
<spartanweaponry:greatsword_wood>,
<spartanweaponry:greatsword_stone>,
<spartanweaponry:greatsword_iron>,
<spartanweaponry:greatsword_gold>,
<spartanweaponry:greatsword_diamond>,
<spartanweaponry:greatsword_bronze>,
<spartanweaponry:greatsword_steel>,
<spartanweaponry:greatsword_silver>,
<spartanweaponryarcana:greatsword_thaumium>,
<spartanweaponryarcana:greatsword_voidmetal>,
<spartanweaponryarcana:greatsword_dawnstone>
] as IItemStack[];

<ore:greatswordMaster>.addItems(greatswordList);

val rapierList = [
<spartandefiled:rapier_umbrium>,
<spartanfire:rapier_dragonbone>,
<spartanfire:rapier_fire_dragonbone>,
<spartanfire:rapier_ice_dragonbone>,
<spartanfire:rapier_jungle>,
<spartanfire:rapier_desert>,
<spartanfire:rapier_jungle_venom>,
<spartanfire:rapier_desert_venom>,
<spartanweaponry:rapier_gold>,
<spartanweaponry:rapier_wood>,
<spartanweaponry:rapier_stone>,
<spartanweaponry:rapier_iron>,
<spartanweaponry:rapier_diamond>,
<spartanweaponry:rapier_bronze>,
<spartanweaponry:rapier_steel>,
<spartanweaponry:rapier_silver>,
<spartanweaponryarcana:rapier_thaumium>,
<spartanweaponryarcana:rapier_voidmetal>,
<spartanweaponryarcana:rapier_dawnstone>
] as IItemStack[];

<ore:rapierMaster>.addItems(rapierList);

val saberList = [
<spartandefiled:saber_umbrium>,
<spartanfire:saber_dragonbone>,
<spartanfire:saber_fire_dragonbone>,
<spartanfire:saber_jungle>,
<spartanfire:saber_desert>,
<spartanfire:saber_jungle_venom>,
<spartanfire:saber_desert_venom>,
<spartanweaponry:saber_wood>,
<spartanweaponry:saber_stone>,
<spartanweaponry:saber_iron>,
<spartanweaponry:saber_gold>,
<spartanweaponry:saber_diamond>,
<spartanweaponry:saber_bronze>,
<spartanweaponry:saber_steel>,
<spartanweaponry:saber_silver>,
<spartanweaponryarcana:saber_thaumium>,
<spartanweaponryarcana:saber_voidmetal>,
<spartanweaponryarcana:saber_dawnstone>,
<spartanfire:saber_ice_dragonbone>
] as IItemStack[];

<ore:saberMaster>.addItems(saberList);

val katanaList = [
<spartandefiled:katana_umbrium>,
<spartanfire:katana_dragonbone>,
<spartanfire:katana_fire_dragonbone>,
<spartanfire:katana_jungle>,
<spartanfire:katana_desert>,
<spartanfire:katana_jungle_venom>,
<spartanfire:katana_desert_venom>,
<spartanweaponry:katana_wood>,
<spartanweaponry:katana_stone>,
<spartanweaponry:katana_iron>,
<spartanweaponry:katana_gold>,
<spartanweaponry:katana_diamond>,
<spartanweaponry:katana_bronze>,
<spartanweaponry:katana_steel>,
<spartanweaponry:katana_silver>,
<spartanweaponryarcana:katana_thaumium>,
<spartanweaponryarcana:katana_voidmetal>,
<spartanweaponryarcana:katana_dawnstone>,
<spartanfire:katana_ice_dragonbone>
] as IItemStack[];

<ore:katanaMaster>.addItems(katanaList);

val longswordList = [
<spartandefiled:longsword_umbrium>,
<spartanfire:longsword_dragonbone>,
<spartanfire:longsword_fire_dragonbone>,
<spartanfire:longsword_ice_dragonbone>,
<spartanfire:longsword_jungle>,
<spartanfire:longsword_desert>,
<spartanfire:longsword_jungle_venom>,
<spartanfire:longsword_desert_venom>,
<spartanweaponry:longsword_wood>,
<spartanweaponry:longsword_stone>,
<spartanweaponry:longsword_iron>,
<spartanweaponry:longsword_gold>,
<spartanweaponry:longsword_diamond>,
<spartanweaponry:longsword_bronze>,
<spartanweaponry:longsword_steel>,
<spartanweaponry:longsword_silver>,
<spartanweaponryarcana:longsword_thaumium>,
<spartanweaponryarcana:longsword_voidmetal>,
<spartanweaponryarcana:longsword_dawnstone>

] as IItemStack[];

<ore:longswordMaster>.addItems(longswordList);

