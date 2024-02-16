#priority -10

import mods.compatskills.SkillCreator.createSkill;
import mods.compatskills.Skill;
import crafttweaker.item.IItemStack as IItemStack;

#Spells tab
val spells=mods.compatskills.SkillCreator.createSkill("spells", "thaumcraft:textures/gui/gui_research_back_4.jpg");
spells.name="Spells";
spells.setRankIcon(0, "minecraft:textures/items/iron_ingot.png");
spells.setEnabled(true);
spells.setBaseLevelCost(0);
spells.setLevelCap(5);
spells.setRankIcon(0, "minecraft:textures/mage.png");
spells.setLevelStaggering(["1|10"]);
spells.setSkillPointInterval(1);
mods.compatskills.SkillLocks.addLevelLock(<skill:reskillable:spells>, 1, "trait|compatskills:mage");


#Spells
#Advanced
val m_adv_2=mods.compatskills.TraitCreator.createTrait("f3magic", 0, 0, "compatskills:spells", 1, "or|[trait|compatskills:mage]~[trait|compatskills:hybridm]");
m_adv_2.name = "Advanced fire magic";
m_adv_2.description = "Allow casting advanced tier fire spells";
m_adv_2.icon= "ebwizardry:textures/items/wand_advanced_fire.png";
val m_adv_3=mods.compatskills.TraitCreator.createTrait("i3magic", 0, 1, "compatskills:spells", 1, "or|[trait|compatskills:mage]~[trait|compatskills:hybridm]");
m_adv_3.name = "Advanced ice magic";
m_adv_3.description = "Allow casting advanced tier ice spells";
m_adv_3.icon= "ebwizardry:textures/items/wand_advanced_ice.png";
val m_adv_4=mods.compatskills.TraitCreator.createTrait("t3magic", 0, 2, "compatskills:spells", 1, "or|[trait|compatskills:mage]~[trait|compatskills:hybridm]");
m_adv_4.name = "Advanced thunder magic";
m_adv_4.description = "Allow casting advanced tier thunder spells";
m_adv_4.icon= "ebwizardry:textures/items/wand_advanced_lightning.png";
val m_adv_5=mods.compatskills.TraitCreator.createTrait("e3magic", 0, 3, "compatskills:spells", 1, "or|[trait|compatskills:mage]~[trait|compatskills:hybridm]");
m_adv_5.name = "Advanced earth magic";
m_adv_5.description = "Allow casting advanced tier earth spells";
m_adv_5.icon= "ebwizardry:textures/items/wand_advanced_earth.png";
val m_adv_6=mods.compatskills.TraitCreator.createTrait("h3magic", 4, 0, "compatskills:spells", 1, "or|[trait|compatskills:mage]~[trait|compatskills:hybridm]");
m_adv_6.name = "Advanced healing magic";
m_adv_6.description = "Allow casting advanced tier healing spells";
m_adv_6.icon= "ebwizardry:textures/items/wand_advanced_healing.png";
val m_adv_7=mods.compatskills.TraitCreator.createTrait("s3magic", 4, 1, "compatskills:spells", 1, "or|[trait|compatskills:mage]~[trait|compatskills:hybridm]");
m_adv_7.name = "Advanced sorcery magic";
m_adv_7.description = "Allow casting advanced tier sorcery spells";
m_adv_7.icon= "ebwizardry:textures/items/wand_advanced_sorcery.png";
val m_adv_8=mods.compatskills.TraitCreator.createTrait("n3magic", 4, 2, "compatskills:spells", 1, "or|[trait|compatskills:mage]~[trait|compatskills:hybridm]");
m_adv_8.name = "Advanced necronamcy magic";
m_adv_8.description = "Allow casting advanced tier necronamcy spells";
m_adv_8.icon= "ebwizardry:textures/items/wand_advanced_necromancy.png";

#Master
val m_mas_9=mods.compatskills.TraitCreator.createTrait("f4magic", 1, 0, "compatskills:spells", 2, "and|[trait|compatskills:f3magic]~[trait|compatskills:mage]");
m_mas_9.name = "Master fire elemental magic";
m_mas_9.description = "Allow casting master tier elemental spells";
m_mas_9.icon= "ebwizardry:textures/items/wand_master_fire.png";
val m_mas_10=mods.compatskills.TraitCreator.createTrait("i4magic", 1, 1, "compatskills:spells", 2, "and|[trait|compatskills:i3magic]~[trait|compatskills:mage]");
m_mas_10.name = "Master ice elemental magic";
m_mas_10.description = "Allow casting master tier elemental spells";
m_mas_10.icon= "ebwizardry:textures/items/wand_master_ice.png";
val m_mas_11=mods.compatskills.TraitCreator.createTrait("t4magic", 1, 2, "compatskills:spells", 2, "and|[trait|compatskills:t3magic]~[trait|compatskills:mage]");
m_mas_11.name = "Master thunder elemental magic";
m_mas_11.description = "Allow casting master tier elemental spells";
m_mas_11.icon= "ebwizardry:textures/items/wand_master_lightning.png";
val m_mas_12=mods.compatskills.TraitCreator.createTrait("e4magic", 1, 3, "compatskills:spells", 2, "and|[trait|compatskills:e3magic]~[trait|compatskills:mage]");
m_mas_12.name = "Master earth elemental magic";
m_mas_12.description = "Allow casting master tier elemental spells";
m_mas_12.icon= "ebwizardry:textures/items/wand_master_earth.png";
val m_mas_13=mods.compatskills.TraitCreator.createTrait("h4magic", 3, 0, "compatskills:spells", 2, "and|[trait|compatskills:h3magic]~[trait|compatskills:mage]");
m_mas_13.name = "Master healing magic";
m_mas_13.description = "Allow casting master tier healing spells";
m_mas_13.icon= "ebwizardry:textures/items/wand_master_healing.png";
val m_mas_14=mods.compatskills.TraitCreator.createTrait("s4magic", 3, 1, "compatskills:spells", 2, "and|[trait|compatskills:s3magic]~[trait|compatskills:mage]");
m_mas_14.name = "Master sorcery magic";
m_mas_14.description = "Allow casting master tier sorcery spells";
m_mas_14.icon= "ebwizardry:textures/items/wand_master_sorcery.png";
val m_mas_15=mods.compatskills.TraitCreator.createTrait("n4magic", 3, 2, "compatskills:spells", 2, "and|[trait|compatskills:n3magic]~[trait|compatskills:mage]");
m_mas_15.name = "Master necromancy magic";
m_mas_15.description = "Allow casting master tier necronamcy spells";
m_mas_15.icon= "ebwizardry:textures/items/wand_master_necromancy.png";

# PERKS










# ITEM LOCKS


mods.compatskills.Requirement.addRequirement(<ebwizardry:arcane_workbench>, "or|[trait|compatskills:mage]~[trait|compatskills:hybridm]");
mods.compatskills.Requirement.addRequirement(<ebwizardry:magic_wand>, "or|[trait|compatskills:mage]~[trait|compatskills:hybridm]");

val spell= [
<ebwizardry:spell_book:9>,
<ebwizardry:spell_book:141>,
<ebwizardry:spell_book:113>,
<ebwizardry:spell_book:8>,
<ebwizardry:spell_book:10>,
<ebwizardry:spell_book:11>,
<ebwizardry:spell_book:142>,
<ebwizardry:spell_book:145>,
<ebwizardry:spell_book:144>,
<ebwizardry:novice_fire_wand>,
<ebwizardry:wizard_hat>,
<ebwizardry:wizard_robe>,
<ebwizardry:wizard_leggings>,
<ebwizardry:wizard_boots>,
<ebwizardry:novice_lightning_wand>,
<ebwizardry:novice_healing_wand>,
<ebwizardry:novice_ice_wand>,
<ebwizardry:novice_earth_wand>,
<ebwizardry:novice_sorcery_wand>,
<ebwizardry:novice_necromancy_wand>,
<ebwizardry:spell_book:7>,
<ebwizardry:spell_book:112>,
<ebwizardry:spell_book:6>,
<ebwizardry:spell_book:5>,
<ebwizardry:spell_book:3>,
<ebwizardry:spell_book:4>,
<ebwizardry:spell_book:2>,
<ebwizardry:spell_book:111>,
<ebwizardry:spell_book:1>,
<ebwizardry:siphon_upgrade>,
<ebwizardry:melee_upgrade>,
<ebwizardry:apprentice_wand>,
<ebwizardry:storage_upgrade>,
<ebwizardry:siphon_upgrade>,
<ebwizardry:melee_upgrade>,
<ebwizardry:arcane_tome:1>,
<ebwizardry:apprentice_wand>,
<ebwizardry:storage_upgrade>,
<ebwizardry:charm_abseiling>,
<ebwizardry:charm_growth>,
<ebwizardry:charm_minion_variants>,
<ebwizardry:charm_minion_health>,
<ebwizardry:charm_storm>,
<ebwizardry:charm_lava_walking>,
<ebwizardry:charm_auto_smelt>,
<ebwizardry:charm_experience_tome>,
<ebwizardry:charm_haggler>,
<ebwizardry:amulet_channeling>,
<ebwizardry:amulet_potential>,
<ebwizardry:amulet_ice_protection>,
<ebwizardry:amulet_ice_immunity>,
<ebwizardry:amulet_fire_cloaking>,
<ebwizardry:amulet_fire_protection>,
<ebwizardry:amulet_wisdom>,
<ebwizardry:amulet_warding>,
<ebwizardry:amulet_arcane_defence>,
<ebwizardry:amulet_lich>,
<ebwizardry:amulet_wither_immunity>,
<ebwizardry:amulet_glide>,
<ebwizardry:amulet_banishing>,
<ebwizardry:amulet_anchoring>,
<ebwizardry:amulet_recovery>,
<ebwizardry:amulet_transience>,
<ebwizardry:amulet_resurrection>,
<ebwizardry:amulet_auto_shield>,
<ebwizardry:charm_flight>,
<ebwizardry:charm_feeding>,
<ebwizardry:charm_transportation>,
<ebwizardry:charm_light>,
<ebwizardry:charm_stop_time>,
<ebwizardry:charm_silk_touch>,
<ebwizardry:ring_leeching>,
<ebwizardry:ring_necromancy_melee>,
<ebwizardry:ring_condensing>,
<ebwizardry:ring_siphoning>,
<ebwizardry:ring_battlemage>,
<ebwizardry:ring_storm>,
<ebwizardry:ring_combustion>,
<ebwizardry:ring_fire_melee>,
<ebwizardry:ring_fire_biome>,
<ebwizardry:ring_disintegration>,
<ebwizardry:ring_ice_melee>,
<ebwizardry:ring_ice_biome>,
<ebwizardry:ring_lightning_melee>,
<ebwizardry:ring_extraction>,
<ebwizardry:ring_full_moon>,
<ebwizardry:ring_shattering>,
<ebwizardry:ring_arcane_frost>,
<ebwizardry:ring_conjurer>,
<ebwizardry:ring_blockwrangler>,
<ebwizardry:ring_mana_return>,
<ebwizardry:ring_defender>,
<ebwizardry:ring_paladin>,
<ebwizardry:ring_interdiction>,
<ebwizardry:ring_mind_control>,
<ebwizardry:ring_poison>,
<ebwizardry:ring_earth_melee>,
<ebwizardry:ring_earth_biome>,
<ebwizardry:ring_seeking>,
<ebwizardry:ring_hammer>,
<ebwizardry:ring_soulbinding>,
<ebwizardry:amulet_absorption>,
<ebwizardry:charm_sixth_sense>,
<ebwizardry:charm_black_hole>,
<ebwizardry:charm_mount_teleporting>,
<ebwizardry:charm_move_speed>,
<ebwizardry:charm_spell_discovery>,
<ebwizardry:charm_undead_helmets>,
<ebwizardry:charm_hunger_casting>,
<ebwizardry:amulet_frost_warding>,
<ebwizardry:ring_evoker>,
<ebwizardry:ring_meteor>,
<ebwizardry:ring_stormcloud>,
<ebwizardry:warlock_robe>,
<ebwizardry:battlemage_chestplate>,
<ebwizardry:sage_boots>,
<ebwizardry:warlock_leggings>,
<ebwizardry:battlemage_helmet>,
<ebwizardry:sage_leggings>,
<ebwizardry:warlock_hood>,
<ebwizardry:battlemage_leggings>,
<ebwizardry:sage_hat>,
<ebwizardry:battlemage_boots>,
<ebwizardry:sage_robe>,
<ebwizardry:warlock_boots>
 ] as IItemStack[];

for item in spell {
    mods.compatskills.Requirement.addRequirement(item, "and|[trait|compatskills:mage]~[reskillable:magic|8]");
}

val spell2= [
<ebwizardry:arcane_tome:2>,
<ebwizardry:advanced_wand>,
<ebwizardry:condenser_upgrade>
 ] as IItemStack[];

for item in spell2 {
    mods.compatskills.Requirement.addRequirement(item, "and|[trait|compatskills:mage]~[reskillable:magic|16]");
}

val spell3= [
<ebwizardry:cooldown_upgrade>,
<ebwizardry:blast_upgrade>,
<ebwizardry:resplendent_thread>,
<ebwizardry:crystal_silver_plating>,
<ebwizardry:ethereal_crystalweave>,
<ebwizardry:master_wand>,
<ebwizardry:arcane_tome:3>,
<ebwizardry:range_upgrade>,
<ebwizardry:duration_upgrade>,
<ebwizardry:attunement_upgrade>
 ] as IItemStack[];

for item in spell3 {
    mods.compatskills.Requirement.addRequirement(item, "and|[trait|compatskills:mage]~[reskillable:magic|24]");
}

val mage_items_fire= [
    <ebwizardry:apprentice_fire_wand>,
    <ebwizardry:wizard_boots_fire>,
    <ebwizardry:wizard_leggings_fire>,
    <ebwizardry:wizard_robe_fire>,
    <ebwizardry:wizard_hat_fire>,
    <ebwizardry:spell_book:15>,
    <ebwizardry:spell_book:13>,
    <ebwizardry:spell_book:14>,
    <ebwizardry:spell_book:16>,
    <ebwizardry:spell_book:114>,
    <ebwizardry:spell_book:17>
] as IItemStack[];

for item in mage_items_fire {
    mods.compatskills.Requirement.addRequirement(item, "and|[reskillable:magic|16]~[or|[trait|compatskills:f3magic]~[trait|compatskills:f4magic]]");
}

val mage_items_ice= [
<ebwizardry:apprentice_ice_wand>,
<ebwizardry:wizard_boots_ice>,
<ebwizardry:wizard_leggings_ice>,
<ebwizardry:wizard_robe_ice>,
<ebwizardry:wizard_hat_ice>,
<ebwizardry:spell_book:20>,
<ebwizardry:spell_book:19>,
<ebwizardry:spell_book:18>,
<ebwizardry:spell_book:21>,
<ebwizardry:spell_book:22>,
<ebwizardry:spell_book:146>,
<ebwizardry:spell_book:173>

] as IItemStack[];

for item in mage_items_ice {
    mods.compatskills.Requirement.addRequirement(item, "and|[reskillable:magic|16]~[or|[trait|compatskills:i3magic]~[trait|compatskills:i4magic]]");
}

val mage_items_thunder= [
<ebwizardry:wizard_hat_lightning>,
<ebwizardry:wizard_robe_lightning>,
<ebwizardry:apprentice_lightning_wand>,
<ebwizardry:wizard_boots_lightning>,
<ebwizardry:wizard_leggings_lightning>,
<ebwizardry:spell_book:27>,
<ebwizardry:spell_book:23>,
<ebwizardry:spell_book:26>,
<ebwizardry:spell_book:25>,
<ebwizardry:spell_book:24>,
<ebwizardry:spell_book:147>,
<ebwizardry:spell_book:174>
] as IItemStack[];

for item in mage_items_thunder {
    mods.compatskills.Requirement.addRequirement(item, "and|[reskillable:magic|16]~[or|[trait|compatskills:t3magic]~[trait|compatskills:t4magic]]");
}

val mage_items_earth= [
<ebwizardry:wizard_boots_earth>,
<ebwizardry:apprentice_earth_wand>,
<ebwizardry:wizard_hat_earth>,
<ebwizardry:wizard_robe_earth>,
<ebwizardry:wizard_leggings_earth>,
<ebwizardry:spell_book:32>,
<ebwizardry:spell_book:35>,
<ebwizardry:spell_book:34>,
<ebwizardry:spell_book:36>,
<ebwizardry:spell_book:33>,
<ebwizardry:spell_book:149>,
<ebwizardry:spell_book:117>,
<ebwizardry:spell_book:37>,
<ebwizardry:spell_book:118>
] as IItemStack[];

for item in mage_items_earth {
    mods.compatskills.Requirement.addRequirement(item, "and|[reskillable:magic|16]~[or|[trait|compatskills:e3magic]~[trait|compatskills:e4magic]]");
}

val spellapn= [
<ebwizardry:spell_book:115>,
<ebwizardry:spell_book:31>,
<ebwizardry:wizard_hat_necromancy>,
<ebwizardry:wizard_robe_necromancy>,
<ebwizardry:wizard_leggings_necromancy>,
<ebwizardry:wizard_boots_necromancy>,
<ebwizardry:spell_book:30>,
<ebwizardry:spell_book:148>,
<ebwizardry:apprentice_necromancy_wand>,
<ebwizardry:spell_book:116>,
<ebwizardry:spell_book:29>,
<ebwizardry:spell_book:28>,
<ebwizardry:spell_book:175>
 ] as IItemStack[];

for item in spellapn {
    mods.compatskills.Requirement.addRequirement(item, "and|[reskillable:magic|16]~[or|[trait|compatskills:n3magic]~[trait|compatskills:n4magic]]");
}

val spellaph= [
<ebwizardry:spell_book:151>,
<ebwizardry:spell_book:46>,
<ebwizardry:spell_book:123>,
<ebwizardry:spell_book:45>,
<ebwizardry:spell_book:47>,
<ebwizardry:spell_book:122>,
<ebwizardry:spell_book:44>,
<ebwizardry:spell_book:12>,
<ebwizardry:apprentice_healing_wand>,
<ebwizardry:wizard_boots_healing>,
<ebwizardry:wizard_leggings_healing>,
<ebwizardry:wizard_robe_healing>,
<ebwizardry:wizard_hat_healing>,
<ebwizardry:spell_book:176>
 ] as IItemStack[];

for item in spellaph {
    mods.compatskills.Requirement.addRequirement(item, "and|[reskillable:magic|16]~[or|[trait|compatskills:h3magic]~[trait|compatskills:h4magic]]");
}

val spellaps= [
<ebwizardry:spell_book:42>,
<ebwizardry:spell_book:38>,
<ebwizardry:wizard_leggings_sorcery>,
<ebwizardry:wizard_robe_sorcery>,
<ebwizardry:wizard_hat_sorcery>,
<ebwizardry:spell_book:40>,
<ebwizardry:apprentice_sorcery_wand>,
<ebwizardry:spell_book:41>,
<ebwizardry:spell_book:121>,
<ebwizardry:spell_book:120>,
<ebwizardry:spell_book:39>,
<ebwizardry:spell_book:119>,
<ebwizardry:spell_book:150>,
<ebwizardry:wizard_boots_sorcery>,
<ebwizardry:spell_book:43>
 ] as IItemStack[];

for item in spellaps {
    mods.compatskills.Requirement.addRequirement(item, "and|[reskillable:magic|16]~[or|[trait|compatskills:s3magic]~[trait|compatskills:s4magic]]");
}

val mage_items_fire_2= [
<ebwizardry:advanced_fire_wand>,
<ebwizardry:warlock_hood_fire>,
<ebwizardry:warlock_boots_fire>,
<ebwizardry:warlock_leggings_fire>,
<ebwizardry:warlock_robe_fire>,
<ebwizardry:battlemage_boots_fire>,
<ebwizardry:battlemage_leggings_fire>,
<ebwizardry:battlemage_chestplate_fire>,
<ebwizardry:battlemage_helmet_fire>,
<ebwizardry:sage_boots_fire>,
<ebwizardry:sage_leggings_fire>,
<ebwizardry:sage_robe_fire>,
<ebwizardry:sage_hat_fire>,
<ebwizardry:spell_book:153>,
<ebwizardry:spell_book:48>,
<ebwizardry:spell_book:124>,
<ebwizardry:spell_book:50>,
<ebwizardry:spell_book:152>,
<ebwizardry:spell_book:52>,
<ebwizardry:spell_book:125>,
<ebwizardry:spell_book:49>,
<ebwizardry:spell_book:51>,
<ebwizardry:spell_book:53>
] as IItemStack[];

for item in mage_items_fire_2 {
    mods.compatskills.Requirement.addRequirement(item, "and|[reskillable:magic|24]~[or|[trait|compatskills:f3magic]~[trait|compatskills:f4magic]]");
}

val mage_items_ice_2= [
<ebwizardry:advanced_ice_wand>,
<ebwizardry:warlock_hood_ice>,
<ebwizardry:warlock_leggings_ice>,
<ebwizardry:sage_hat_ice>,
<ebwizardry:sage_leggings_ice>,
<ebwizardry:battlemage_helmet_ice>,
<ebwizardry:battlemage_leggings_ice>,
<ebwizardry:warlock_robe_ice>,
<ebwizardry:warlock_boots_ice>,
<ebwizardry:sage_robe_ice>,
<ebwizardry:sage_boots_ice>,
<ebwizardry:battlemage_chestplate_ice>,
<ebwizardry:battlemage_boots_ice>,
<ebwizardry:spell_book:58>,
<ebwizardry:spell_book:128>,
<ebwizardry:spell_book:126>,
<ebwizardry:spell_book:56>,
<ebwizardry:spell_book:54>,
<ebwizardry:spell_book:57>,
<ebwizardry:spell_book:154>,
<ebwizardry:spell_book:55>,
<ebwizardry:spell_book:127>,
<ebwizardry:spell_book:177>
] as IItemStack[];

for item in mage_items_ice_2 {
    mods.compatskills.Requirement.addRequirement(item, "and|[reskillable:magic|24]~[or|[trait|compatskills:i3magic]~[trait|compatskills:i4magic]]");
}


val mage_items_thunder_2= [
<ebwizardry:warlock_boots_lightning>,
<ebwizardry:warlock_leggings_lightning>,
<ebwizardry:warlock_robe_lightning>,
<ebwizardry:warlock_hood_lightning>,
<ebwizardry:battlemage_boots_lightning>,
<ebwizardry:battlemage_leggings_lightning>,
<ebwizardry:battlemage_chestplate_lightning>,
<ebwizardry:battlemage_helmet_lightning>,
<ebwizardry:sage_boots_lightning>,
<ebwizardry:sage_leggings_lightning>,
<ebwizardry:sage_robe_lightning>,
<ebwizardry:sage_hat_lightning>,
<ebwizardry:advanced_lightning_wand>,
<ebwizardry:spell_book:129>,
<ebwizardry:spell_book:62>,
<ebwizardry:spell_book:59>,
<ebwizardry:spell_book:64>,
<ebwizardry:spell_book:61>,
<ebwizardry:spell_book:63>,
<ebwizardry:spell_book:155>,
<ebwizardry:spell_book:60>,
<ebwizardry:spell_book:178>
] as IItemStack[];

for item in mage_items_thunder_2 {
    mods.compatskills.Requirement.addRequirement(item, "and|[reskillable:magic|24]~[or|[trait|compatskills:t3magic]~[trait|compatskills:t4magic]]");
}

#advanced
val mage_items_earth_2= [
<ebwizardry:spell_book:76>,
<ebwizardry:spell_book:131>,
<ebwizardry:spell_book:72>,
<ebwizardry:spell_book:77>,
<ebwizardry:spell_book:73>,
<ebwizardry:spell_book:74>,
<ebwizardry:spell_book:75>,
<ebwizardry:advanced_earth_wand>,
<ebwizardry:warlock_boots_earth>,
<ebwizardry:warlock_leggings_earth>,
<ebwizardry:warlock_robe_earth>,
<ebwizardry:warlock_hood_earth>,
<ebwizardry:battlemage_boots_earth>,
<ebwizardry:battlemage_leggings_earth>,
<ebwizardry:battlemage_chestplate_earth>,
<ebwizardry:battlemage_helmet_earth>,
<ebwizardry:sage_boots_earth>,
<ebwizardry:sage_leggings_earth>,
<ebwizardry:sage_robe_earth>,
<ebwizardry:sage_hat_earth>,
<ebwizardry:spell_book:180>
 ] as IItemStack[];

for item in mage_items_earth_2 {
    mods.compatskills.Requirement.addRequirement(item, "and|[reskillable:magic|24]~[or|[trait|compatskills:e3magic]~[trait|compatskills:e4magic]]");
}


val spelladn= [
<ebwizardry:spell_book:158>,
<ebwizardry:spell_book:157>,
<ebwizardry:spell_book:71>,
<ebwizardry:spell_book:130>,
<ebwizardry:spell_book:156>,
<ebwizardry:spell_book:68>,
<ebwizardry:spell_book:69>,
<ebwizardry:spell_book:70>,
<ebwizardry:spell_book:65>,
<ebwizardry:spell_book:66>,
<ebwizardry:spell_book:67>,
<ebwizardry:advanced_necromancy_wand>,
<ebwizardry:warlock_robe_necromancy>,
<ebwizardry:battlemage_chestplate_necromancy>,
<ebwizardry:sage_boots_necromancy>,
<ebwizardry:warlock_leggings_necromancy>,
<ebwizardry:battlemage_helmet_necromancy>,
<ebwizardry:sage_leggings_necromancy>,
<ebwizardry:warlock_hood_necromancy>,
<ebwizardry:battlemage_leggings_necromancy>,
<ebwizardry:sage_hat_necromancy>,
<ebwizardry:battlemage_boots_necromancy>,
<ebwizardry:sage_robe_necromancy>,
<ebwizardry:warlock_boots_necromancy>,
<ebwizardry:spell_book:179>

 ] as IItemStack[];

for item in spelladn {
    mods.compatskills.Requirement.addRequirement(item, "and|[reskillable:magic|24]~[or|[trait|compatskills:n3magic]~[trait|compatskills:n4magic]]");
}

val spelladh= [
<ebwizardry:spell_book:90>,
<ebwizardry:spell_book:86>,
<ebwizardry:spell_book:87>,
<ebwizardry:spell_book:165>,
<ebwizardry:spell_book:89>,
<ebwizardry:spell_book:164>,
<ebwizardry:spell_book:88>,
<ebwizardry:advanced_healing_wand>,
<ebwizardry:spell_book:166>,
<ebwizardry:spell_book:134>,
<ebwizardry:spell_book:163>,
<ebwizardry:spell_book:135>,
<ebwizardry:spell_book:133>,
<ebwizardry:battlemage_chestplate_healing>,
<ebwizardry:battlemage_helmet_healing>,
<ebwizardry:sage_boots_healing>,
<ebwizardry:sage_leggings_healing>,
<ebwizardry:sage_robe_healing>,
<ebwizardry:sage_hat_healing>,
<ebwizardry:warlock_robe_healing>,
<ebwizardry:warlock_leggings_healing>,
<ebwizardry:warlock_boots_healing>,
<ebwizardry:warlock_hood_healing>,
<ebwizardry:battlemage_boots_healing>,
<ebwizardry:battlemage_leggings_healing>,
<ebwizardry:spell_book:183>

 ] as IItemStack[];

for item in spelladh {
    mods.compatskills.Requirement.addRequirement(item, "and|[reskillable:magic|24]~[or|[trait|compatskills:h3magic]~[trait|compatskills:h4magic]]");
}

val spellads= [
<ebwizardry:spell_book:132>,
<ebwizardry:spell_book:79>,
<ebwizardry:spell_book:162>,
<ebwizardry:spell_book:80>,
<ebwizardry:spell_book:78>,
<ebwizardry:spell_book:159>,
<ebwizardry:spell_book:85>,
<ebwizardry:advanced_sorcery_wand>,
<ebwizardry:spell_book:84>,
<ebwizardry:spell_book:161>,
<ebwizardry:spell_book:160>,
<ebwizardry:spell_book:81>,
<ebwizardry:spell_book:82>,
<ebwizardry:spell_book:83>,
<ebwizardry:battlemage_boots_sorcery>,
<ebwizardry:sage_leggings_sorcery>,
<ebwizardry:sage_boots_sorcery>,
<ebwizardry:battlemage_helmet_sorcery>,
<ebwizardry:sage_robe_sorcery>,
<ebwizardry:sage_hat_sorcery>,
<ebwizardry:warlock_leggings_sorcery>,
<ebwizardry:warlock_hood_sorcery>,
<ebwizardry:warlock_robe_sorcery>,
<ebwizardry:warlock_boots_sorcery>,
<ebwizardry:battlemage_chestplate_sorcery>,
<ebwizardry:battlemage_leggings_sorcery>,
<ebwizardry:spell_book:181>,
<ebwizardry:spell_book:182>
 ] as IItemStack[];

for item in spellads {
    mods.compatskills.Requirement.addRequirement(item,"and|[reskillable:magic|24]~[or|[trait|compatskills:s3magic]~[trait|compatskills:s4magic]]");
}

#master

val spellaf= [
<ebwizardry:spell_book:91>,
<ebwizardry:spell_book:92>,
<ebwizardry:spell_book:93>,
<ebwizardry:master_fire_wand>,
<ebwizardry:spell_book:185>,
<ebwizardry:spell_book:184>
 ] as IItemStack[];

for item in spellaf {
    mods.compatskills.Requirement.addRequirement(item, "and|[trait|compatskills:f4magic]~[reskillable:magic|32]");
}

val spellai= [
<ebwizardry:spell_book:94>,
<ebwizardry:spell_book:95>,
<ebwizardry:spell_book:96>,
<ebwizardry:spell_book:136>,
<ebwizardry:master_ice_wand>
 ] as IItemStack[];

for item in spellai {
    mods.compatskills.Requirement.addRequirement(item, "and|[trait|compatskills:i4magic]~[reskillable:magic|32]");
}

val spellal= [
<ebwizardry:spell_book:97>,
<ebwizardry:spell_book:98>,
<ebwizardry:spell_book:137>,
<ebwizardry:spell_book:138>,
<ebwizardry:master_lightning_wand>
 ] as IItemStack[];

for item in spellal {
    mods.compatskills.Requirement.addRequirement(item, "and|[trait|compatskills:t4magic]~[reskillable:magic|32]");
}

val spellae= [
<ebwizardry:spell_book:102>,
<ebwizardry:spell_book:103>,
<ebwizardry:spell_book:104>,
<ebwizardry:spell_book:139>,
<ebwizardry:spell_book:169>,
<ebwizardry:master_earth_wand>,
<ebwizardry:spell_book:187>
 ] as IItemStack[];

for item in spellae {
    mods.compatskills.Requirement.addRequirement(item, "and|[trait|compatskills:e4magic]~[reskillable:magic|32]");
}

val spellan= [
<ebwizardry:spell_book:99>,
<ebwizardry:spell_book:100>,
<ebwizardry:spell_book:101>,
<ebwizardry:spell_book:167>,
<ebwizardry:spell_book:168>,
<ebwizardry:master_necromancy_wand>,
<ebwizardry:spell_book:186>
 ] as IItemStack[];

for item in spellan {
    mods.compatskills.Requirement.addRequirement(item, "and|[trait|compatskills:n4magic]~[reskillable:magic|32]");
}

val spellah= [
<ebwizardry:master_healing_wand>,
<ebwizardry:spell_book:172>,
<ebwizardry:spell_book:140>,
<ebwizardry:spell_book:110>,
<ebwizardry:spell_book:109>,
<ebwizardry:spell_book:188>
 ] as IItemStack[];

for item in spellah {
    mods.compatskills.Requirement.addRequirement(item, "and|[trait|compatskills:h4magic]~[reskillable:magic|32]");
}

val spellas= [
<ebwizardry:spell_book:105>,
<ebwizardry:spell_book:106>,
<ebwizardry:spell_book:107>,
<ebwizardry:spell_book:108>,
<ebwizardry:spell_book:170>,
<ebwizardry:spell_book:171>,
<ebwizardry:master_sorcery_wand>
 ] as IItemStack[];
 

for item in spellas {
    mods.compatskills.Requirement.addRequirement(item, "and|[trait|compatskills:s4magic]~[reskillable:magic|32]");
}