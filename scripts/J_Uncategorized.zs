import mods.jei.JEI.removeAndHide as rh;

rh(<ebwizardry:spell_book:143>);
rh(<ebwizardry:spell_book:162>);
recipes.removeByRecipeName("waystones:waystone");
recipes.removeByRecipeName("steel_co:carbonized_iron");
recipes.removeByRecipeName("sereneseasons:greenhose_glass");
recipes.removeByRecipeName("endreborn:items/netherbrick");


recipes.addShaped(<minecraft:flint>, [[<minecraft:gravel>, null, null],[<minecraft:gravel>, <minecraft:gravel>, null], [null, null, null]]);
recipes.addShaped(<waystones:waystone>, [[null, <endreborn:item_advanced_ender_pearl>, null],[<endreborn:item_advanced_ender_pearl>, <ebwizardry:astral_diamond>, <endreborn:item_advanced_ender_pearl>], [<endreborn:block_endorium>, <endreborn:block_endorium>, <endreborn:block_endorium>]]);
recipes.addShaped(<steel_co:carbonized_iron>, [[<minecraft:coal:1>, <minecraft:redstone>, <minecraft:coal:1>],[<minecraft:coal:1>, <minecraft:iron_ingot>, <minecraft:coal:1>], [<minecraft:coal:1>, <minecraft:redstone>, <minecraft:coal:1>]]);
recipes.addShaped(<minecraft:spawn_egg>.withTag({EntityTag: {id: "iceandfire:deathworm"}}), [[<minecraft:sand>, <minecraft:diamond>, <minecraft:sand>],[<biomesoplenty:flesh>, <minecraft:egg>, <biomesoplenty:flesh>], [<biomesoplenty:flesh>, <biomesoplenty:flesh>, <biomesoplenty:flesh>]]);

