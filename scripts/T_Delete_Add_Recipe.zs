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



furnace.addRecipe(<minecraft:diamond> * 2, <minecraft:diamond_helmet:*>, 99999);
furnace.addRecipe(<minecraft:diamond> * 4, <minecraft:diamond_chestplate:*>, 99999);
furnace.addRecipe(<minecraft:diamond> * 3, <minecraft:diamond_leggings:*>, 99999);
furnace.addRecipe(<minecraft:diamond> * 1, <minecraft:diamond_boots:*>, 99999);
furnace.addRecipe(<minecraft:iron_ingot> * 2, <minecraft:iron_helmet:*>, 99999);
furnace.addRecipe(<minecraft:iron_ingot> * 4, <minecraft:iron_chestplate:*>, 99999);
furnace.addRecipe(<minecraft:iron_ingot> * 3, <minecraft:iron_leggings:*>, 99999);
furnace.addRecipe(<minecraft:iron_ingot> * 1, <minecraft:iron_boots:*>, 99999);
furnace.addRecipe(<minecraft:gold_ingot> * 2, <minecraft:golden_helmet:*>, 99999);
furnace.addRecipe(<minecraft:gold_ingot> * 4, <minecraft:golden_chestplate:*>, 99999);
furnace.addRecipe(<minecraft:gold_ingot> * 3, <minecraft:golden_leggings:*>, 99999);
furnace.addRecipe(<minecraft:gold_ingot> * 1, <minecraft:golden_boots:*>, 99999);
furnace.addRecipe(<minecraft:diamond> * 1, <minecraft:diamond_sword:*>, 99999);
furnace.addRecipe(<minecraft:diamond> * 1, <minecraft:diamond_pickaxe:*>, 99999);
furnace.addRecipe(<minecraft:diamond> * 1, <minecraft:diamond_axe:*>, 99999);
furnace.addRecipe(<minecraft:diamond> * 1, <minecraft:diamond_hoe:*>, 99999);
furnace.addRecipe(<minecraft:iron_ingot> * 1, <minecraft:iron_sword:*>, 99999);
furnace.addRecipe(<minecraft:iron_ingot> * 1, <minecraft:iron_pickaxe:*>, 99999);
furnace.addRecipe(<minecraft:iron_ingot> * 1, <minecraft:iron_axe:*>, 99999);
furnace.addRecipe(<minecraft:iron_ingot> * 1, <minecraft:iron_hoe:*>, 99999);
furnace.addRecipe(<minecraft:iron_nugget> * 4, <minecraft:iron_shovel:*>, 99999);
furnace.addRecipe(<minecraft:gold_ingot> * 1, <minecraft:golden_sword:*>, 99999);
furnace.addRecipe(<minecraft:gold_ingot> * 1, <minecraft:golden_pickaxe:*>, 99999);
furnace.addRecipe(<minecraft:gold_ingot> * 1, <minecraft:golden_axe:*>, 99999);
furnace.addRecipe(<minecraft:gold_ingot> * 1, <minecraft:golden_hoe:*>, 99999);
furnace.addRecipe(<minecraft:gold_nugget> * 4, <minecraft:golden_shovel:*>, 99999);
furnace.addRecipe(<minecraft:diamond> * 8, <minecraft:diamond_horse_armor:*>, 99999);
furnace.addRecipe(<minecraft:iron_ingot> * 8, <minecraft:iron_horse_armor:*>, 99999);
furnace.addRecipe(<minecraft:gold_ingot> * 8, <minecraft:golden_horse_armor:*>, 99999);
furnace.addRecipe(<minecraft:iron_nugget> * 11, <minecraft:chainmail_helmet:*>, 99999);
furnace.addRecipe(<minecraft:iron_nugget> * 18, <minecraft:chainmail_chestplate:*>, 99999);
furnace.addRecipe(<minecraft:iron_nugget> * 15, <minecraft:chainmail_leggings:*>, 99999);
furnace.addRecipe(<minecraft:iron_nugget> * 9, <minecraft:chainmail_boots:*>, 99999);

furnace.addRecipe(<minecraft:diamond> * 2, <spartanweaponry:longsword_diamond:*>, 99999);
furnace.addRecipe(<minecraft:diamond> * 1, <spartanweaponry:katana_diamond:*>, 99999);
furnace.addRecipe(<minecraft:diamond> * 1, <spartanweaponry:saber_diamond:*>, 99999);
furnace.addRecipe(<minecraft:diamond> * 2, <spartanweaponry:rapier_diamond:*>, 99999);
furnace.addRecipe(<minecraft:diamond> * 3, <spartanweaponry:greatsword_diamond:*>, 99999);
furnace.addRecipe(<minecraft:diamond> * 3, <spartanweaponry:hammer_diamond:*>, 99999);
furnace.addRecipe(<minecraft:diamond> * 1, <spartanweaponry:warhammer_diamond:*>, 99999);
furnace.addRecipe(<minecraft:diamond> * 2, <spartanweaponry:halberd_diamond:*>, 99999);
furnace.addRecipe(<minecraft:diamond> * 1, <spartanweaponry:throwing_axe_diamond:*>, 99999);
furnace.addRecipe(<minecraft:diamond> * 2, <spartanweaponry:battleaxe_diamond:*>, 99999);
furnace.addRecipe(<minecraft:diamond> * 1, <spartanweaponry:mace_diamond:*>, 99999);
furnace.addRecipe(<minecraft:diamond> * 1, <spartanweaponry:glaive_diamond:*>, 99999);
furnace.addRecipe(<minecraft:diamond> * 1, <spartanweaponry:staff_diamond:*>, 99999);
furnace.addRecipe(<minecraft:iron_ingot> * 2, <spartanweaponry:longsword_iron:*>, 99999);
furnace.addRecipe(<minecraft:iron_ingot> * 1, <spartanweaponry:katana_iron:*>, 99999);
furnace.addRecipe(<minecraft:iron_ingot> * 1, <spartanweaponry:saber_iron:*>, 99999);
furnace.addRecipe(<minecraft:iron_ingot> * 2, <spartanweaponry:rapier_iron:*>, 99999);
furnace.addRecipe(<minecraft:iron_ingot> * 3, <spartanweaponry:greatsword_iron:*>, 99999);
furnace.addRecipe(<minecraft:iron_ingot> * 3, <spartanweaponry:hammer_iron:*>, 99999);
furnace.addRecipe(<minecraft:iron_ingot> * 1, <spartanweaponry:warhammer_iron:*>, 99999);
furnace.addRecipe(<minecraft:iron_ingot> * 2, <spartanweaponry:halberd_iron:*>, 99999);
furnace.addRecipe(<minecraft:iron_ingot> * 1, <spartanweaponry:throwing_axe_iron:*>, 99999);
furnace.addRecipe(<minecraft:iron_ingot> * 2, <spartanweaponry:battleaxe_iron:*>, 99999);
furnace.addRecipe(<minecraft:iron_ingot> * 1, <spartanweaponry:mace_iron:*>, 99999);
furnace.addRecipe(<minecraft:iron_ingot> * 1, <spartanweaponry:glaive_iron:*>, 99999);
furnace.addRecipe(<minecraft:iron_ingot> * 1, <spartanweaponry:staff_iron:*>, 99999);
furnace.addRecipe(<minecraft:gold_ingot> * 2, <spartanweaponry:longsword_gold:*>, 99999);
furnace.addRecipe(<minecraft:gold_ingot> * 1, <spartanweaponry:katana_gold:*>, 99999);
furnace.addRecipe(<minecraft:gold_ingot> * 1, <spartanweaponry:saber_gold:*>, 99999);
furnace.addRecipe(<minecraft:gold_ingot> * 2, <spartanweaponry:rapier_gold:*>, 99999);
furnace.addRecipe(<minecraft:gold_ingot> * 3, <spartanweaponry:greatsword_gold:*>, 99999);
furnace.addRecipe(<minecraft:gold_ingot> * 3, <spartanweaponry:hammer_gold:*>, 99999);
furnace.addRecipe(<minecraft:gold_ingot> * 1, <spartanweaponry:warhammer_gold:*>, 99999);
furnace.addRecipe(<minecraft:gold_ingot> * 2, <spartanweaponry:halberd_gold:*>, 99999);
furnace.addRecipe(<minecraft:gold_ingot> * 1, <spartanweaponry:throwing_axe_gold:*>, 99999);
furnace.addRecipe(<minecraft:gold_ingot> * 2, <spartanweaponry:battleaxe_gold:*>, 99999);
furnace.addRecipe(<minecraft:gold_ingot> * 1, <spartanweaponry:mace_gold:*>, 99999);
furnace.addRecipe(<minecraft:gold_ingot> * 1, <spartanweaponry:glaive_gold:*>, 99999);
furnace.addRecipe(<minecraft:gold_ingot> * 1, <spartanweaponry:staff_gold:*>, 99999);
furnace.addRecipe(<iceandfire:silver_ingot> * 2, <spartanweaponry:longsword_silver:*>, 99999);
furnace.addRecipe(<iceandfire:silver_ingot> * 1, <spartanweaponry:katana_silver:*>, 99999);
furnace.addRecipe(<iceandfire:silver_ingot> * 1, <spartanweaponry:saber_silver:*>, 99999);
furnace.addRecipe(<iceandfire:silver_ingot> * 2, <spartanweaponry:rapier_silver:*>, 99999);
furnace.addRecipe(<iceandfire:silver_ingot> * 3, <spartanweaponry:greatsword_silver:*>, 99999);
furnace.addRecipe(<iceandfire:silver_ingot> * 3, <spartanweaponry:hammer_silver:*>, 99999);
furnace.addRecipe(<iceandfire:silver_ingot> * 1, <spartanweaponry:warhammer_silver:*>, 99999);
furnace.addRecipe(<iceandfire:silver_ingot> * 2, <spartanweaponry:halberd_silver:*>, 99999);
furnace.addRecipe(<iceandfire:silver_ingot> * 1, <spartanweaponry:throwing_axe_silver:*>, 99999);
furnace.addRecipe(<iceandfire:silver_ingot> * 2, <spartanweaponry:battleaxe_silver:*>, 99999);
furnace.addRecipe(<iceandfire:silver_ingot> * 1, <spartanweaponry:mace_silver:*>, 99999);
furnace.addRecipe(<iceandfire:silver_ingot> * 1, <spartanweaponry:glaive_silver:*>, 99999);
furnace.addRecipe(<iceandfire:silver_ingot> * 1, <spartanweaponry:staff_silver:*>, 99999);

furnace.addRecipe(<iceandfire:silver_ingot> * 2, <iceandfire:armor_silver_metal_helmet:*>, 99999);
furnace.addRecipe(<iceandfire:silver_ingot> * 4, <iceandfire:armor_silver_metal_chestplate:*>, 99999);
furnace.addRecipe(<iceandfire:silver_ingot> * 3, <iceandfire:armor_silver_metal_leggings:*>, 99999);
furnace.addRecipe(<iceandfire:silver_ingot> * 2, <iceandfire:armor_silver_metal_boots:*>, 99999);
furnace.addRecipe(<iceandfire:silver_ingot> * 1, <iceandfire:silver_sword:*>, 99999);
furnace.addRecipe(<iceandfire:silver_ingot> * 1, <iceandfire:silver_axe:*>, 99999);
furnace.addRecipe(<iceandfire:silver_ingot> * 1, <iceandfire:silver_pickaxe:*>, 99999);
furnace.addRecipe(<iceandfire:silver_ingot> * 1, <iceandfire:silver_hoe:*>, 99999);
furnace.addRecipe(<iceandfire:silver_nugget> * 4, <iceandfire:silver_shovel:*>, 99999);

furnace.addRecipe(<minecraft:iron_nugget> * 30, <wolfarmor:chainmail_wolf_armor:*>, 99999);
furnace.addRecipe(<minecraft:iron_ingot> * 7, <wolfarmor:iron_wolf_armor:*>, 99999);
furnace.addRecipe(<minecraft:gold_ingot> * 7, <wolfarmor:gold_wolf_armor:*>, 99999);
furnace.addRecipe(<minecraft:diamond> * 7, <wolfarmor:diamond_wolf_armor:*>, 99999);

furnace.addRecipe(<iceandfire:silver_ingot> * 1, <iceandfire:silver_ore:*>, 99999);
furnace.addRecipe(<iceandfire:sapphire_gem> * 1, <iceandfire:sapphire_ore:*>, 99999);

recipes.remove(<roughtweaks:salve>);
recipes.remove(<roughtweaks:plaster>);
recipes.remove(<roughtweaks:bandage>);
recipes.remove(<xat:glowing_ingot>);
recipes.addShapeless("lolarecipe2",<roughtweaks:salve>,[<minecraft:bowl>,<minecraft:red_flower:*>,<minecraft:yellow_flower>]);

recipes.addShapeless("lolarecipe3",<roughtweaks:salve>,[<minecraft:bowl>,<minecraft:cactus>]);

recipes.addShapeless("lolarecipe4",<roughtweaks:salve>,[<minecraft:bowl>,<minecraft:wheat_seeds>,<minecraft:vine>]);

recipes.addShapeless("lolarecipe5",<roughtweaks:plaster>,[<roughtweaks:salve>,<ore:string>,<minecraft:paper>]);

recipes.addShaped("lolarecipe6",<roughtweaks:bandage>,
 [[null,null,null],
  [<ore:string>,<minecraft:wool:*>,<ore:string>],
  [null,<roughtweaks:salve>,null]]);

  recipes.addShaped("lolarecipe9",<minecraft:packed_ice>,
 [[<simpledifficulty:ice_chunk>,<simpledifficulty:ice_chunk>,<simpledifficulty:ice_chunk>],
  [<simpledifficulty:ice_chunk>,<simpledifficulty:ice_chunk>,<simpledifficulty:ice_chunk>],
  [<simpledifficulty:ice_chunk>,<simpledifficulty:ice_chunk>,<simpledifficulty:ice_chunk>]]);

  recipes.addShaped("lolarecipe24",<xat:dragons_eye>,
 [[<xat:glow_ring>,<minecraft:diamond_sword>,<xat:glowing_gem>],
  [<minecraft:diamond_sword>,<iceandfire:dragon_skull>,<minecraft:diamond_sword>],
  [<xat:glowing_gem>,<minecraft:diamond_sword>,<xat:glowing_gem>]]);

  recipes.addShaped("lolarecipe29",<scalinghealth:crystalshard>,
 [[<scalinghealth:heartdust>,<scalinghealth:heartdust>,<scalinghealth:heartdust>],
  [<scalinghealth:heartdust>,<scalinghealth:heartdust>,<scalinghealth:heartdust>],
  [<scalinghealth:heartdust>,<scalinghealth:heartdust>,<scalinghealth:heartdust>]]);

recipes.addShapeless("lolarecipe31",<bountifulbaubles:spectralsilt>,[<bountifulbaubles:disintegrationtablet>,<minecraft:diamond_block>]);

recipes.addShapeless("lolarecipe32",<bountifulbaubles:spectralsilt>,[<bountifulbaubles:disintegrationtablet>,<minecraft:emerald_block>]);

recipes.addShapeless("lolarecipe31x",<bountifulbaubles:spectralsilt>,[<bountifulbaubles:disintegrationtablet>,<bountifulbaubles:phantomprism>]);

recipes.addShapeless("lolarecipe35",<armorunder:auto_chestplate_liner>,[<armorunder:warm_chestplate_liner>,<armorunder:cool_chestplate_liner>]);

recipes.addShapeless("lolarecipe36",<armorunder:auto_leggings_liner>,[<armorunder:warm_leggings_liner>,<armorunder:cool_leggings_liner>]);

recipes.addShaped("lolarecipe33",<advanced-fishing:blazing_fishing_pole>,
 [[null,null,<minecraft:blaze_rod>],
  [null,<minecraft:blaze_rod>,<ore:string>],
  [<minecraft:blaze_rod>,<minecraft:magma_cream>,<ore:string>]]);

  recipes.addShaped("lolarecipe38",<sereneseasons:greenhouse_glass>*4,
 [[<ore:dyeCyan>,<ore:blockGlass>,<ore:dyeCyan>],
  [<ore:blockGlass>,<ore:plankWood>,<ore:blockGlass>],
  [<ore:dyeCyan>,<ore:blockGlass>,<ore:dyeCyan>]]);

  recipes.addShapeless("lolarecipe39",<realistictorches:torch_lit>,[<realistictorches:torch_unlit>,<minecraft:flint_and_steel>.anyDamage().transformDamage()]);

  recipes.addShapeless("lolarecipe40",<armorunder:flipflop_liner_material>,[<armorunder:warm_liner_material>,<armorunder:cool_liner_material>]);

  recipes.addShaped("lolarecipe41",<armorunder:auto_chestplate_liner>,
 [[<armorunder:flipflop_liner_material>,null,<armorunder:flipflop_liner_material>],
  [<armorunder:flipflop_liner_material>,<armorunder:flipflop_liner_material>,<armorunder:flipflop_liner_material>],
  [<armorunder:flipflop_liner_material>,<armorunder:flipflop_liner_material>,<armorunder:flipflop_liner_material>]]);
  
recipes.addShaped("lolarecipe42",<armorunder:auto_leggings_liner>,
 [[<armorunder:flipflop_liner_material>,<armorunder:flipflop_liner_material>,<armorunder:flipflop_liner_material>],
  [<armorunder:flipflop_liner_material>,null,<armorunder:flipflop_liner_material>],
  [<armorunder:flipflop_liner_material>,null,<armorunder:flipflop_liner_material>]]);
  
recipes.addShaped("lolarecipe56",<xat:glowing_ingot>,
 [[<minecraft:glowstone_dust>,<minecraft:blaze_powder>,<minecraft:glowstone_dust>],
  [<minecraft:blaze_powder>,<iceandfire:silver_ingot>,<minecraft:blaze_powder>],
  [<minecraft:glowstone_dust>,<minecraft:blaze_powder>,<minecraft:glowstone_dust>]]);

  recipes.addShaped("lolarecipe57",<xat:glowing_ingot>,
 [[<xat:glowing_powder>,<xat:glowing_powder>],
  [<xat:glowing_powder>,<xat:glowing_powder>]]);

  recipes.addShaped("lolarecipe62",<minecraft:sandstone>,
 [[<notreepunching:rock/sandstone>,<notreepunching:rock/sandstone>],
  [<notreepunching:rock/sandstone>,<notreepunching:rock/sandstone>]]);
  
recipes.addShaped("lolarecipe63",<minecraft:red_sandstone>,
 [[<notreepunching:rock/red_sandstone>,<notreepunching:rock/red_sandstone>],
  [<notreepunching:rock/red_sandstone>,<notreepunching:rock/red_sandstone>]]);

  recipes.addShaped("lolarecipe64",  <wearablebackpacks:backpack>.withTag({backpack:{size:[13,6]}}),
 [[<iceandfire:troll_leather_forest>,<minecraft:diamond>,<iceandfire:troll_leather_forest>],
  [<iceandfire:troll_leather_forest>,<wearablebackpacks:backpack>,<iceandfire:troll_leather_forest>],
  [<iceandfire:troll_leather_forest>,<iceandfire:troll_leather_forest>,<iceandfire:troll_leather_forest>]]);

  recipes.addShaped("lolarecipe65",  <wearablebackpacks:backpack>.withTag({backpack:{size:[13,6]}}),
 [[<iceandfire:troll_leather_mountain>,<minecraft:diamond>,<iceandfire:troll_leather_mountain>],
  [<iceandfire:troll_leather_mountain>,<wearablebackpacks:backpack>,<iceandfire:troll_leather_mountain>],
  [<iceandfire:troll_leather_mountain>,<iceandfire:troll_leather_mountain>,<iceandfire:troll_leather_mountain>]]);

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

