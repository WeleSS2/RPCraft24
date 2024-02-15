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
<firstaid:bandage>

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

