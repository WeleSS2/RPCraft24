import loottweaker.LootTweaker;
import loottweaker.vanilla.loot.LootTables;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Conditions;
import loottweaker.vanilla.loot.Functions;

LootTweaker.getTable("thaumicaugmentation:block/loot_common").getPool("loot_common").removeEntry("nugget_gold");
LootTweaker.getTable("thaumicaugmentation:block/loot_common").getPool("loot_common").removeEntry("nugget_quicksilver");
LootTweaker.getTable("thaumicaugmentation:block/loot_common").getPool("loot_common").removeEntry("nugget_thaumium");
LootTweaker.getTable("thaumicaugmentation:block/loot_common").getPool("loot_common").removeEntry("nugget_void");
LootTweaker.getTable("thaumicaugmentation:block/loot_common").getPool("loot_common").removeEntry("nugget_brass");
LootTweaker.getTable("thaumicaugmentation:block/loot_common").getPool("loot_common").removeEntry("minecraft:gold_ingot");

LootTweaker.getTable("thaumicaugmentation:block/loot_common").getPool("loot_common").addItemEntryHelper(<minecraft:gold_ingot>,300,0,[Functions.setCount(1, 2)],[]);
LootTweaker.getTable("thaumicaugmentation:block/loot_common").getPool("loot_common").addItemEntryHelper(<thaumcraft:ingot>,300,0,[Functions.setCount(1, 2)],[]);
LootTweaker.getTable("thaumicaugmentation:block/loot_common").getPool("loot_common").addItemEntryHelper(<thaumcraft:ingot:2>,300,0,[Functions.setCount(1, 2)],[]);
LootTweaker.getTable("thaumicaugmentation:block/loot_common").getPool("loot_common").addItemEntryHelper(<thaumcraft:ingot:1>,200,0,[Functions.setCount(1, 2)],[]);
LootTweaker.getTable("thaumicaugmentation:block/loot_common").getPool("loot_common").addItemEntryHelper(<thaumcraft:quicksilver>,300,0,[Functions.setCount(1, 2)],[]);

LootTweaker.getTable("thaumicaugmentation:block/loot_uncommon").getPool("loot_uncommon").removeEntry("nugget_gold");
LootTweaker.getTable("thaumicaugmentation:block/loot_uncommon").getPool("loot_uncommon").removeEntry("nugget_quicksilver");
LootTweaker.getTable("thaumicaugmentation:block/loot_uncommon").getPool("loot_uncommon").removeEntry("nugget_thaumium");
LootTweaker.getTable("thaumicaugmentation:block/loot_uncommon").getPool("loot_uncommon").removeEntry("nugget_void");
LootTweaker.getTable("thaumicaugmentation:block/loot_uncommon").getPool("loot_uncommon").removeEntry("nugget_brass");
LootTweaker.getTable("thaumicaugmentation:block/loot_uncommon").getPool("loot_uncommon").removeEntry("minecraft:gold_ingot");

LootTweaker.getTable("thaumicaugmentation:block/loot_uncommon").getPool("loot_uncommon").addItemEntryHelper(<minecraft:gold_ingot>,150,0,[Functions.setCount(1, 3)],[]);
LootTweaker.getTable("thaumicaugmentation:block/loot_uncommon").getPool("loot_uncommon").addItemEntryHelper(<thaumcraft:ingot>,150,0,[Functions.setCount(1, 3)],[]);
LootTweaker.getTable("thaumicaugmentation:block/loot_uncommon").getPool("loot_uncommon").addItemEntryHelper(<thaumcraft:ingot:2>,150,0,[Functions.setCount(1, 3)],[]);
LootTweaker.getTable("thaumicaugmentation:block/loot_uncommon").getPool("loot_uncommon").addItemEntryHelper(<thaumcraft:ingot:1>,75,0,[Functions.setCount(1, 3)],[]);
LootTweaker.getTable("thaumicaugmentation:block/loot_uncommon").getPool("loot_uncommon").addItemEntryHelper(<thaumcraft:quicksilver>,150,0,[Functions.setCount(1, 3)],[]);
LootTweaker.getTable("thaumicaugmentation:block/loot_uncommon").getPool("loot_uncommon").addItemEntryHelper(<bountifulbaubles:trinketballoon>,10,0,[Functions.setCount(1, 1)],[]);
LootTweaker.getTable("thaumicaugmentation:block/loot_uncommon").getPool("loot_uncommon").addItemEntryHelper(<bountifulbaubles:trinketmagiclenses>,10,0,[Functions.setCount(1, 1)],[]);
LootTweaker.getTable("thaumicaugmentation:block/loot_uncommon").getPool("loot_uncommon").addItemEntryHelper(<bountifulbaubles:trinketapple>,10,0,[Functions.setCount(1, 1)],[]);
LootTweaker.getTable("thaumicaugmentation:block/loot_uncommon").getPool("loot_uncommon").addItemEntryHelper(<bountifulbaubles:trinketbezoar>,10,0,[Functions.setCount(1, 1)],[]);
LootTweaker.getTable("thaumicaugmentation:block/loot_uncommon").getPool("loot_uncommon").addItemEntryHelper(<bountifulbaubles:trinketvitamins>,10,0,[Functions.setCount(1, 1)],[]);
LootTweaker.getTable("thaumicaugmentation:block/loot_uncommon").getPool("loot_uncommon").addItemEntryHelper(<bountifulbaubles:trinketshulkerheart>,10,0,[Functions.setCount(1, 1)],[]);
LootTweaker.getTable("thaumicaugmentation:block/loot_uncommon").getPool("loot_uncommon").addItemEntryHelper(<bountifulbaubles:ringoverclocking>,10,0,[Functions.setCount(1, 1)],[]);

LootTweaker.getTable("thaumicaugmentation:block/loot_rare").getPool("loot_rare").removeEntry("nugget_gold");
LootTweaker.getTable("thaumicaugmentation:block/loot_rare").getPool("loot_rare").removeEntry("nugget_quicksilver");
LootTweaker.getTable("thaumicaugmentation:block/loot_rare").getPool("loot_rare").removeEntry("nugget_thaumium");
LootTweaker.getTable("thaumicaugmentation:block/loot_rare").getPool("loot_rare").removeEntry("nugget_void");
LootTweaker.getTable("thaumicaugmentation:block/loot_rare").getPool("loot_rare").removeEntry("nugget_brass");
LootTweaker.getTable("thaumicaugmentation:block/loot_rare").getPool("loot_rare").removeEntry("minecraft:gold_ingot");

LootTweaker.getTable("thaumicaugmentation:block/loot_rare").getPool("loot_rare").addItemEntryHelper(<minecraft:gold_ingot>,50,0,[Functions.setCount(1, 1)],[]);
LootTweaker.getTable("thaumicaugmentation:block/loot_rare").getPool("loot_rare").addItemEntryHelper(<thaumcraft:ingot>,50,0,[Functions.setCount(1, 1)],[]);
LootTweaker.getTable("thaumicaugmentation:block/loot_rare").getPool("loot_rare").addItemEntryHelper(<thaumcraft:ingot:2>,50,0,[Functions.setCount(1, 1)],[]);
LootTweaker.getTable("thaumicaugmentation:block/loot_rare").getPool("loot_rare").addItemEntryHelper(<thaumcraft:ingot:1>,40,0,[Functions.setCount(1, 1)],[]);
LootTweaker.getTable("thaumicaugmentation:block/loot_rare").getPool("loot_rare").addItemEntryHelper(<thaumcraft:quicksilver>,50,0,[Functions.setCount(1, 1)],[]);
LootTweaker.getTable("thaumicaugmentation:block/loot_rare").getPool("loot_rare").addItemEntryHelper(<bountifulbaubles:trinketballoon>,20,0,[Functions.setCount(1, 1)],[]);
LootTweaker.getTable("thaumicaugmentation:block/loot_rare").getPool("loot_rare").addItemEntryHelper(<bountifulbaubles:trinketmagiclenses>,20,0,[Functions.setCount(1, 1)],[]);
LootTweaker.getTable("thaumicaugmentation:block/loot_rare").getPool("loot_rare").addItemEntryHelper(<bountifulbaubles:trinketapple>,20,0,[Functions.setCount(1, 1)],[]);
LootTweaker.getTable("thaumicaugmentation:block/loot_rare").getPool("loot_rare").addItemEntryHelper(<bountifulbaubles:trinketbezoar>,20,0,[Functions.setCount(1, 1)],[]);
LootTweaker.getTable("thaumicaugmentation:block/loot_rare").getPool("loot_rare").addItemEntryHelper(<bountifulbaubles:trinketvitamins>,20,0,[Functions.setCount(1, 1)],[]);
LootTweaker.getTable("thaumicaugmentation:block/loot_rare").getPool("loot_rare").addItemEntryHelper(<bountifulbaubles:trinketshulkerheart>,20,0,[Functions.setCount(1, 1)],[]);
LootTweaker.getTable("thaumicaugmentation:block/loot_rare").getPool("loot_rare").addItemEntryHelper(<bountifulbaubles:ringoverclocking>,20,0,[Functions.setCount(1, 1)],[]);
LootTweaker.getTable("thaumicaugmentation:block/loot_rare").getPool("loot_rare").addItemEntryHelper(<ebwizardry:astral_diamond>,5,0,[Functions.setCount(1, 1)],[]);
//LootTweaker.getTable("thaumicaugmentation:block/loot_rare").getPool("loot_rare").addItemEntryHelper(<cavern:mirage_book>,10,0,[Functions.setCount(1, 1)],[]);
//LootTweaker.getTable("thaumicaugmentation:block/loot_rare").getPool("loot_rare").addItemEntryHelper(<cavern:mirage_book:1>,10,0,[Functions.setCount(1, 1)],[]);
//LootTweaker.getTable("thaumicaugmentation:block/loot_rare").getPool("loot_rare").addItemEntryHelper(<cavern:mirage_book:2>,10,0,[Functions.setCount(1, 1)],[]);
//LootTweaker.getTable("thaumicaugmentation:block/loot_rare").getPool("loot_rare").addItemEntryHelper(<cavern:mirage_book:3>,10,0,[Functions.setCount(1, 1)],[]);
//LootTweaker.getTable("thaumicaugmentation:block/loot_rare").getPool("loot_rare").addItemEntryHelper(<cavern:mirage_book:4>,10,0,[Functions.setCount(1, 1)],[]);
//LootTweaker.getTable("thaumicaugmentation:block/loot_rare").getPool("loot_rare").addItemEntryHelper(<cavern:mirage_book:5>,10,0,[Functions.setCount(1, 1)],[]);
//LootTweaker.getTable("thaumicaugmentation:block/loot_rare").getPool("loot_rare").addItemEntryHelper(<cavern:mirage_book:6>,10,0,[Functions.setCount(1, 1)],[]);
LootTweaker.getTable("thaumicaugmentation:block/loot_rare").getPool("loot_rare").addItemEntryHelper(<waystones:waystone>,1,0,[Functions.setCount(1, 1)],[]);
LootTweaker.getTable("thaumicaugmentation:block/loot_rare").getPool("loot_rare").addItemEntryHelper(<bountifulbaubles:enderdragonscale>,20,0,[Functions.setCount(1, 1)],[]);




