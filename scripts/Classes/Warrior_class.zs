import mods.compatskills.SkillCreator.createSkill;
import mods.compatskills.Skill;

import crafttweaker.entity.IEntity;
import crafttweaker.entity.IEntityLiving;
import crafttweaker.entity.IEntityLivingBase;
import crafttweaker.entity.IEntityItem;
import crafttweaker.entity.IEntityDefinition;
import crafttweaker.data.IData;
import crafttweaker.item.IItemStack;
import crafttweaker.item.WeightedItemStack;
import crafttweaker.player.IPlayer;
import crafttweaker.world.IWorld;
import crafttweaker.world.IBlockPos;
import crafttweaker.block.IBlock;
import crafttweaker.block.IBlockState;
import crafttweaker.world.IBlockAccess;
#import crafttweaker.util.Math;
import crafttweaker.world.IFacing;
import crafttweaker.entity.IEntityEquipmentSlot;
import crafttweaker.entity.IEntityXp;
import crafttweaker.entity.IEntityArrow;
import crafttweaker.entity.IEntityAnimal;
import crafttweaker.damage.IDamageSource;
import crafttweaker.world.IRayTraceResult;
import crafttweaker.entity.AttributeModifier;
import crafttweaker.liquid.ILiquidDefinition;
import crafttweaker.entity.IEntityThrowable;
import crafttweaker.text.ITextComponent;
import crafttweaker.world.IVector3d;
import crafttweaker.potions.IPotion;

#Warrior tab
val warrior=mods.compatskills.SkillCreator.createSkill("warrior", "textures/blocks/stonebrick.png");
warrior.name="Warrior";
warrior.setRankIcon(0, "reskillable:textures/warrior.png");
warrior.setEnabled(true);
warrior.setBaseLevelCost(0); 
warrior.setLevelCap(10);
warrior.setLevelStaggering(["1|7"]);
warrior.setSkillPointInterval(1);
mods.compatskills.VisibilityLock.addVisibilityLock(<skill:compatskills:warrior>, "trait|compatskills:warrior");

#Traits
val Weapon = mods.compatskills.TraitCreator.createTrait("sword", 0, 0, "compatskills:warrior", 1, "trait|compatskills:warrior");
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

val YellowBrute = mods.compatskills.TraitCreator.createTrait("yellowBrute", 0, 2, "compatskills:warrior", 2, "trait|compatskills:armor");
YellowBrute.name = "Yellow brute";
YellowBrute.description = "At 21:37 you got resistance 2 for 6 min.";
YellowBrute.icon = "reskillable:textures/yellowbrute.png";

YellowBrute.onPlayerTick = function(e as crafttweaker.event.PlayerTickEvent) {
    if(e.player.world.isRemote()) return;
    val player as IPlayer = e.player;
    val world as IWorld = player.world;
    if(world.time % 24000 != 21370) return;

    server.commandManager.executeCommandSilent(server, "/particle totem "~player.x~" "~ (player.y + player.eyeHeight) ~" "~player.z~" .5 .5 .5 .1 50");
    player.addPotionEffect(<potion:minecraft:resistance>.makePotionEffect(6000,0));
};


#Weapons specialisation
val MasterWeapon = mods.compatskills.TraitCreator.createTrait("weaponMastery", 0, 2, "compatskills:warrior", 2, "trait|compatskills:sword");
MasterWeapon.name = "Weapon specialisation";
MasterWeapon.description = "Forces holder to use specyfic type of weapon.";
MasterWeapon.icon = "reskillable:textures/weapon_mastery_specialisation.png";

//Weapon master tab
val weaponMasteryTab=mods.compatskills.SkillCreator.createSkill("weaponMasteryTab", "textures/blocks/stonebrick.png");
weaponMasteryTab.name="Weapon mastery";
weaponMasteryTab.setRankIcon(0, "reskillable:textures/weapon_mastery_specialisation.png");
weaponMasteryTab.setEnabled(true);
weaponMasteryTab.setBaseLevelCost(1); 
weaponMasteryTab.setLevelStaggering(["1|0"]);
weaponMasteryTab.setLevelCap(2);
weaponMasteryTab.setSkillPointInterval(2);
mods.compatskills.VisibilityLock.addVisibilityLock(<skill:compatskills:weaponMasteryTab>, "trait|compatskills:weaponMastery");

val swordMasterWeapon = mods.compatskills.TraitCreator.createTrait("swordMaster", 0, 0, "compatskills:weaponMasteryTab", 1, "trait|compatskills:weaponMastery");
swordMasterWeapon.name = "Sword master";
swordMasterWeapon.description = "Bonus +4 dmg and wither for 5 sec.";
swordMasterWeapon.icon = "iceandfire:textures/items/dragon_sword.png";

swordMasterWeapon.onAttackMob = function(e as crafttweaker.event.EntityLivingHurtEvent) {
    if(isNull(e.entityLivingBase)
    || e.entityLivingBase.world.isRemote()) return;

    if(!e.damageSource.trueSource instanceof IPlayer) return;
    val player as IPlayer = e.damageSource.trueSource;
    
    var weaponCheck = false;
    for ore in player.mainHandHeldItem.ores {
        if(ore.name == "swordMaster") weaponCheck=true;
    }

    if(!weaponCheck) {
        e.cancel();
        return;
    }

    e.amount = e.amount+4.0;
    e.entityLivingBase.addPotionEffect(<potion:minecraft:wither>.makePotionEffect(100,0));
};

val saberMasterWeapon = mods.compatskills.TraitCreator.createTrait("saberMaster", 1, 0, "compatskills:weaponMasteryTab", 1, "trait|compatskills:weaponMastery");
saberMasterWeapon.name = "Saber master";
saberMasterWeapon.description = "Bonus 50% dmg and wither for 5 sec.";
saberMasterWeapon.icon = "spartanfire:textures/items/saber_dragon.png";

saberMasterWeapon.onAttackMob = function(e as crafttweaker.event.EntityLivingHurtEvent) {
    if(isNull(e.entityLivingBase)
    || e.entityLivingBase.world.isRemote()) return;

    if(!e.damageSource.trueSource instanceof IPlayer) return;
    val player as IPlayer = e.damageSource.trueSource;
    
    var weaponCheck = false;
    for ore in player.mainHandHeldItem.ores {
        if(ore.name == "saberMaster") weaponCheck=true;
    }

    if(!weaponCheck) {
        e.cancel();
        return;
    }

    e.amount = e.amount*1.5;
    e.entityLivingBase.addPotionEffect(<potion:minecraft:wither>.makePotionEffect(100,0));
};

val katanaMasterWeapon = mods.compatskills.TraitCreator.createTrait("katanaMaster", 2, 0, "compatskills:weaponMasteryTab", 1, "trait|compatskills:weaponMastery");
katanaMasterWeapon.name = "Katana master";
katanaMasterWeapon.description = "Bonus +4 dmg and 20% for paralysis for 3 sec.";
katanaMasterWeapon.icon = "spartanfire:textures/items/katana_dragon.png";

katanaMasterWeapon.onAttackMob = function(e as crafttweaker.event.EntityLivingHurtEvent) {
    if(isNull(e.entityLivingBase)
    || e.entityLivingBase.world.isRemote()) return;

    if(!e.damageSource.trueSource instanceof IPlayer) return;
    val player as IPlayer = e.damageSource.trueSource;
    
    var weaponCheck = false;
    for ore in player.mainHandHeldItem.ores {
        if(ore.name == "katanaMaster") weaponCheck=true;
    }

    if(!weaponCheck) {
        e.cancel();
        return;
    }

    e.amount = e.amount+4.0;
    if(player.world.random.nextInt(5)==0)e.entityLivingBase.addPotionEffect(<potion:lycanitesmobs:paralysis>.makePotionEffect(60,0));
};

val rapierMasterWeapon = mods.compatskills.TraitCreator.createTrait("rapierMaster", 3, 0, "compatskills:weaponMasteryTab", 1, "trait|compatskills:weaponMastery");
rapierMasterWeapon.name = "Rapier master";
rapierMasterWeapon.description = "Bonus 50% dmg and 10% for armor part strip.";
rapierMasterWeapon.icon = "spartanfire:textures/items/rapier_dragon.png";

rapierMasterWeapon.onAttackMob = function(e as crafttweaker.event.EntityLivingHurtEvent) {
    if(isNull(e.entityLivingBase)
    || e.entityLivingBase.world.isRemote()) return;

    if(!e.damageSource.trueSource instanceof IPlayer) return;
    val player as IPlayer = e.damageSource.trueSource;
    
    var weaponCheck = false;
    for ore in player.mainHandHeldItem.ores {
        if(ore.name == "rapierMaster") weaponCheck=true;
    }

    if(!weaponCheck) {
        e.cancel();
        return;
    }

    e.amount = e.amount*1.5;
    if(player.world.random.nextInt(10)==0) stripArmor(e.entityLivingBase, player);
};

function stripArmor(target as IEntityLivingBase, player as IPlayer) as void {
  var slots = [] as int[];

  if (target.hasItemInSlot(crafttweaker.entity.IEntityEquipmentSlot.feet())) slots += 0;
  if (target.hasItemInSlot(crafttweaker.entity.IEntityEquipmentSlot.legs())) slots += 1;
  if (target.hasItemInSlot(crafttweaker.entity.IEntityEquipmentSlot.chest())) slots += 2;
  if (target.hasItemInSlot(crafttweaker.entity.IEntityEquipmentSlot.head())) slots += 3;

  if (slots.length == 0) return;
  val slotIndex = slots[target.world.random.nextInt(slots.length)];

  if (slotIndex == 0) {
    var item = target.getItemInSlot(crafttweaker.entity.IEntityEquipmentSlot.feet());
    if (isNull(item)) return;
    if (item.isDamageable) item = item.withDamage(target.world.random.nextInt(item.maxDamage));
    target.world.spawnEntity(item.createEntityItem(target.world, target.position));
    target.setItemToSlot(crafttweaker.entity.IEntityEquipmentSlot.feet(), null);
  }
  if (slotIndex == 1) {
    var item = target.getItemInSlot(crafttweaker.entity.IEntityEquipmentSlot.legs());
    if (isNull(item)) return;
    if (item.isDamageable) item = item.withDamage(target.world.random.nextInt(item.maxDamage));
    target.world.spawnEntity(item.createEntityItem(target.world, target.position));
    target.setItemToSlot(crafttweaker.entity.IEntityEquipmentSlot.legs(), null);
  }
  if (slotIndex == 2) {
    var item = target.getItemInSlot(crafttweaker.entity.IEntityEquipmentSlot.chest());
    if (isNull(item)) return;
    if (item.isDamageable) item = item.withDamage(target.world.random.nextInt(item.maxDamage));
    target.world.spawnEntity(item.createEntityItem(target.world, target.position));
    target.setItemToSlot(crafttweaker.entity.IEntityEquipmentSlot.chest(), null);
  }
  if (slotIndex == 3) {
    var item = target.getItemInSlot(crafttweaker.entity.IEntityEquipmentSlot.head());
    if (isNull(item)) return;
    if (item.isDamageable) item = item.withDamage(target.world.random.nextInt(item.maxDamage));
    target.world.spawnEntity(item.createEntityItem(target.world, target.position));
    target.setItemToSlot(crafttweaker.entity.IEntityEquipmentSlot.head(), null);
  }
  player.sendPlaySoundPacket('thaumcraft:zap', 'ambient', target.position, 1.0f, 1.0f);
}

val battleaxeMasterWeapon = mods.compatskills.TraitCreator.createTrait("battleaxeMaster", 4, 0, "compatskills:weaponMasteryTab", 1, "trait|compatskills:weaponMastery");
battleaxeMasterWeapon.name = "Battleaxe master";
battleaxeMasterWeapon.description = "Bonus 50% dmg and wither 2 for 5 sec";
battleaxeMasterWeapon.icon = "spartanfire:textures/items/battleaxe_dragon.png";

battleaxeMasterWeapon.onAttackMob = function(e as crafttweaker.event.EntityLivingHurtEvent) {
    if(isNull(e.entityLivingBase)
    || e.entityLivingBase.world.isRemote()) return;

    if(!e.damageSource.trueSource instanceof IPlayer) return;
    val player as IPlayer = e.damageSource.trueSource;
    
    var weaponCheck = false;
    for ore in player.mainHandHeldItem.ores {
        if(ore.name == "battleaxeMaster") weaponCheck=true;
    }

    if(!weaponCheck) {
        e.cancel();
        return;
    }

    e.amount = e.amount*1.5;
    e.entityLivingBase.addPotionEffect(<potion:minecraft:wither>.makePotionEffect(100,1));
};

val longswordMasterWeapon = mods.compatskills.TraitCreator.createTrait("longswordMaster", 0, 1, "compatskills:weaponMasteryTab", 1, "trait|compatskills:weaponMastery");
longswordMasterWeapon.name = "Longsword master";
longswordMasterWeapon.description = "Bonus 50% dmg and 10% chance fear to nearby mobs for 5 sec.";
longswordMasterWeapon.icon = "spartanfire:textures/items/longsword_dragon.png";

longswordMasterWeapon.onAttackMob = function(e as crafttweaker.event.EntityLivingHurtEvent) {
    if(isNull(e.entityLivingBase)
    || e.entityLivingBase.world.isRemote()) return;

    if(!e.damageSource.trueSource instanceof IPlayer) return;
    val player as IPlayer = e.damageSource.trueSource;
    
    var weaponCheck = false;
    for ore in player.mainHandHeldItem.ores {
        if(ore.name == "longswordMaster") weaponCheck=true;
    }

    if(!weaponCheck) {
        e.cancel();
        return;
    }

    e.amount = e.amount*1.5;
    if(player.world.random.nextInt(10)==0)e.entityLivingBase.addPotionEffect(<potion:lycanitesmobs:fear>.makePotionEffect(100,0));
};

val greatswordMasterWeapon = mods.compatskills.TraitCreator.createTrait("greatswordMaster", 1, 1, "compatskills:weaponMasteryTab", 1, "trait|compatskills:weaponMastery");
greatswordMasterWeapon.name = "Greatsword master";
greatswordMasterWeapon.description = "Bonus +4 dmg and 10% chance fear to nearby mobs for 5 sec.";
greatswordMasterWeapon.icon = "spartanfire:textures/items/greatsword_dragon.png";

greatswordMasterWeapon.onAttackMob = function(e as crafttweaker.event.EntityLivingHurtEvent) {
    if(isNull(e.entityLivingBase)
    || e.entityLivingBase.world.isRemote()) return;

    if(!e.damageSource.trueSource instanceof IPlayer) return;
    val player as IPlayer = e.damageSource.trueSource;
    
    var weaponCheck = false;
    for ore in player.mainHandHeldItem.ores {
        if(ore.name == "greatswordMaster") weaponCheck=true;
    }

    if(!weaponCheck) {
        e.cancel();
        return;
    }

    e.amount = e.amount+4.0;
    if(player.world.random.nextInt(10)==0)e.entityLivingBase.addPotionEffect(<potion:lycanitesmobs:fear>.makePotionEffect(100,0));
};

val maceMasterWeapon = mods.compatskills.TraitCreator.createTrait("maceMaster", 2, 1, "compatskills:weaponMasteryTab", 1, "trait|compatskills:weaponMastery");
maceMasterWeapon.name = "Mace master";
maceMasterWeapon.description = "Bonus 50% dmg and vulnerable for 5 sec.";
maceMasterWeapon.icon = "spartanfire:textures/items/mace_dragon.png";

maceMasterWeapon.onAttackMob = function(e as crafttweaker.event.EntityLivingHurtEvent) {
    if(isNull(e.entityLivingBase)
    || e.entityLivingBase.world.isRemote()) return;

    if(!e.damageSource.trueSource instanceof IPlayer) return;
    val player as IPlayer = e.damageSource.trueSource;
    
    var weaponCheck = false;
    for ore in player.mainHandHeldItem.ores {
        if(ore.name == "maceMaster") weaponCheck=true;
    }

    if(!weaponCheck) {
        e.cancel();
        return;
    }

    e.amount = e.amount*1.5;
    e.entityLivingBase.addPotionEffect(<potion:potioncore:vulnerable>.makePotionEffect(100,0));
};

val hammerMasterWeapon = mods.compatskills.TraitCreator.createTrait("hammerMaster", 3, 1, "compatskills:weaponMasteryTab", 1, "trait|compatskills:weaponMastery");
hammerMasterWeapon.name = "Hammer master";
hammerMasterWeapon.description = "Bonus 50% dmg and weight effect for 5 sec.";
hammerMasterWeapon.icon = "spartanfire:textures/items/hammer_dragon.png";

hammerMasterWeapon.onAttackMob = function(e as crafttweaker.event.EntityLivingHurtEvent) {
    if(isNull(e.entityLivingBase)
    || e.entityLivingBase.world.isRemote()) return;

    if(!e.damageSource.trueSource instanceof IPlayer) return;
    val player as IPlayer = e.damageSource.trueSource;
    
    var weaponCheck = false;
    for ore in player.mainHandHeldItem.ores {
        if(ore.name == "hammerMaster") weaponCheck=true;
    }

    if(!weaponCheck) {
        e.cancel();
        return;
    }

    e.amount = e.amount*1.5;
    e.entityLivingBase.addPotionEffect(<potion:lycanitesmobs:weight>.makePotionEffect(100,0));
};

val warhammerMasterWeapon = mods.compatskills.TraitCreator.createTrait("warhammerMaster", 4, 1, "compatskills:weaponMasteryTab", 1, "trait|compatskills:weaponMastery");
warhammerMasterWeapon.name = "Warhammer master";
warhammerMasterWeapon.description = "Bonus 50% dmg and 25% armor penetration for 5 sec";
warhammerMasterWeapon.icon = "spartanfire:textures/items/warhammer_dragon.png";

warhammerMasterWeapon.onAttackMob = function(e as crafttweaker.event.EntityLivingHurtEvent) {
    if(isNull(e.entityLivingBase)
    || e.entityLivingBase.world.isRemote()) return;

    if(!e.damageSource.trueSource instanceof IPlayer) return;
    val player as IPlayer = e.damageSource.trueSource;
    
    var weaponCheck = false;
    for ore in player.mainHandHeldItem.ores {
        if(ore.name == "warhammerMaster") weaponCheck=true;
    }

    if(!weaponCheck) {
        e.cancel();
        return;
    }

    e.amount = e.amount*1.5;
    e.entityLivingBase.addPotionEffect(<potion:potioncore:broken_armor>.makePotionEffect(100,0));
};

val pikeMasterWeapon = mods.compatskills.TraitCreator.createTrait("pikeMaster", 0, 2, "compatskills:weaponMasteryTab", 1, "trait|compatskills:weaponMastery");
pikeMasterWeapon.name = "Pike master";
pikeMasterWeapon.description = "Bonus 50% dmg and blindness for 5 sec.";
pikeMasterWeapon.icon = "spartanfire:textures/items/pike_dragon.png";

pikeMasterWeapon.onAttackMob = function(e as crafttweaker.event.EntityLivingHurtEvent) {
    if(isNull(e.entityLivingBase)
    || e.entityLivingBase.world.isRemote()) return;

    if(!e.damageSource.trueSource instanceof IPlayer) return;
    val player as IPlayer = e.damageSource.trueSource;
    
    var weaponCheck = false;
    for ore in player.mainHandHeldItem.ores {
        if(ore.name == "pikeMaster") weaponCheck=true;
    }

    if(!weaponCheck) {
        e.cancel();
        return;
    }

    e.amount = e.amount*1.5;
    e.entityLivingBase.addPotionEffect(<potion:minecraft:blindness>.makePotionEffect(100,0));
};

val halberdMasterWeapon = mods.compatskills.TraitCreator.createTrait("halberdMaster", 1, 2, "compatskills:weaponMasteryTab", 1, "trait|compatskills:weaponMastery");
halberdMasterWeapon.name = "Halberd master";
halberdMasterWeapon.description = "Bonus 50% dmg and 25% armor penetration for 5 sec.";
halberdMasterWeapon.icon = "spartanfire:textures/items/pike_dragon.png";

halberdMasterWeapon.onAttackMob = function(e as crafttweaker.event.EntityLivingHurtEvent) {
    if(isNull(e.entityLivingBase)
    || e.entityLivingBase.world.isRemote()) return;

    if(!e.damageSource.trueSource instanceof IPlayer) return;
    val player as IPlayer = e.damageSource.trueSource;
    
    var weaponCheck = false;
    for ore in player.mainHandHeldItem.ores {
        if(ore.name == "halberdMaster") weaponCheck=true;
    }

    if(!weaponCheck) {
        e.cancel();
        return;
    }

    e.amount = e.amount*1.5;
    e.entityLivingBase.addPotionEffect(<potion:potioncore:broken_armor>.makePotionEffect(100,0));
};

val spearMasterWeapon = mods.compatskills.TraitCreator.createTrait("spearMaster", 2, 2, "compatskills:weaponMasteryTab", 1, "trait|compatskills:weaponMastery");
spearMasterWeapon.name = "Spear master";
spearMasterWeapon.description = "Bonus 50% dmg and blindless for 5 sec.";
spearMasterWeapon.icon = "spartanfire:textures/items/spear_dragon.png";

spearMasterWeapon.onAttackMob = function(e as crafttweaker.event.EntityLivingHurtEvent) {
    if(isNull(e.entityLivingBase)
    || e.entityLivingBase.world.isRemote()) return;

    if(!e.damageSource.trueSource instanceof IPlayer) return;
    val player as IPlayer = e.damageSource.trueSource;
    
    var weaponCheck = false;
    for ore in player.mainHandHeldItem.ores {
        if(ore.name == "spearMaster") weaponCheck=true;
    }

    if(!weaponCheck) {
        e.cancel();
        return;
    }

    e.amount = e.amount*1.5;
    e.entityLivingBase.addPotionEffect(<potion:minecraft:blindness>.makePotionEffect(100,0));
};

val glaiveMasterWeapon = mods.compatskills.TraitCreator.createTrait("glaiveMaster", 3, 2, "compatskills:weaponMasteryTab", 1, "trait|compatskills:weaponMastery");
glaiveMasterWeapon.name = "Glaive master";
glaiveMasterWeapon.description = "Bonus 50% dmg and penetration effect for 5 sec.";
glaiveMasterWeapon.icon = "spartanfire:textures/items/glaive_dragon.png";

glaiveMasterWeapon.onAttackMob = function(e as crafttweaker.event.EntityLivingHurtEvent) {
    if(isNull(e.entityLivingBase)
    || e.entityLivingBase.world.isRemote()) return;

    if(!e.damageSource.trueSource instanceof IPlayer) return;
    val player as IPlayer = e.damageSource.trueSource;
    
    var weaponCheck = false;
    for ore in player.mainHandHeldItem.ores {
        if(ore.name == "glaiveMaster") weaponCheck=true;
    }

    if(!weaponCheck) {
        e.cancel();
        return;
    }

    e.amount = e.amount*1.5;
    e.entityLivingBase.addPotionEffect(<potion:lycanitesmobs:penetration>.makePotionEffect(100,0));
};

val staffMasterWeapon = mods.compatskills.TraitCreator.createTrait("staffMaster", 4, 2, "compatskills:weaponMasteryTab", 1, "trait|compatskills:weaponMastery");
staffMasterWeapon.name = "Staff master";
staffMasterWeapon.description = "Bonus 50% dmg and weight effect for 5 sec.";
staffMasterWeapon.icon = "spartanfire:textures/items/quarterstaff_dragon.png";

staffMasterWeapon.onAttackMob = function(e as crafttweaker.event.EntityLivingHurtEvent) {
    if(isNull(e.entityLivingBase)
    || e.entityLivingBase.world.isRemote()) return;

    if(!e.damageSource.trueSource instanceof IPlayer) return;
    val player as IPlayer = e.damageSource.trueSource;
    
    var weaponCheck = false;
    for ore in player.mainHandHeldItem.ores {
        if(ore.name == "staffMaster") weaponCheck=true;
    }

    if(!weaponCheck) {
        e.cancel();
        return;
    }

    e.amount = e.amount*1.5;
    e.entityLivingBase.addPotionEffect(<potion:lycanitesmobs:weight>.makePotionEffect(100,0));
};

val throwingKnifeMasterWeapon = mods.compatskills.TraitCreator.createTrait("throwingKnifeMaster", 0, 3, "compatskills:weaponMasteryTab", 1, "trait|compatskills:weaponMastery");
throwingKnifeMasterWeapon.name = "Throwing knife master";
throwingKnifeMasterWeapon.description = "Bonus 50% dmg and weakness 3 for 5 sec";
throwingKnifeMasterWeapon.icon = "spartanfire:textures/items/throwing_knife_dragon.png";

throwingKnifeMasterWeapon.onAttackMob = function(e as crafttweaker.event.EntityLivingHurtEvent) {
    if(isNull(e.entityLivingBase)
    || e.entityLivingBase.world.isRemote()) return;

    if(!e.damageSource.trueSource instanceof IPlayer) return;
    val player as IPlayer = e.damageSource.trueSource;
    
    var weaponCheck = false;
    for ore in player.mainHandHeldItem.ores {
        if(ore.name == "throwingKnifeMaster") weaponCheck=true;
    }

    if(!weaponCheck) {
        e.cancel();
        return;
    }

    e.amount = e.amount*1.5;
    e.entityLivingBase.addPotionEffect(<potion:minecraft:weakness>.makePotionEffect(100,2));
};

val throwingAxeMasterWeapon = mods.compatskills.TraitCreator.createTrait("throwingAxeMaster", 1, 3, "compatskills:weaponMasteryTab", 1, "trait|compatskills:weaponMastery");
throwingAxeMasterWeapon.name = "Throwing axe master";
throwingAxeMasterWeapon.description = "Bonus 50% dmg and smited effect for 5 sec.";
throwingAxeMasterWeapon.icon = "spartanfire:textures/items/throwing_axe_dragon.png";

throwingAxeMasterWeapon.onAttackMob = function(e as crafttweaker.event.EntityLivingHurtEvent) {
    if(isNull(e.entityLivingBase)
    || e.entityLivingBase.world.isRemote()) return;

    if(!e.damageSource.trueSource instanceof IPlayer) return;
    val player as IPlayer = e.damageSource.trueSource;
    
    var weaponCheck = false;
    for ore in player.mainHandHeldItem.ores {
        if(ore.name == "throwingAxeMaster") weaponCheck=true;
    }

    if(!weaponCheck) {
        e.cancel();
        return;
    }

    e.amount = e.amount*1.5;
    e.entityLivingBase.addPotionEffect(<potion:lycanitesmobs:smited>.makePotionEffect(100,0));
};

val javelinMasterWeapon = mods.compatskills.TraitCreator.createTrait("javelinMaster", 3, 3, "compatskills:weaponMasteryTab", 1, "trait|compatskills:weaponMastery");
javelinMasterWeapon.name = "Javelin master";
javelinMasterWeapon.description = "Bonus 50% dmg and 50% for thunder.";
javelinMasterWeapon.icon = "spartanfire:textures/items/javelin_dragon.png";

javelinMasterWeapon.onAttackMob = function(e as crafttweaker.event.EntityLivingHurtEvent) {
    if(isNull(e.entityLivingBase)
    || e.entityLivingBase.world.isRemote()) return;

    if(!e.damageSource.trueSource instanceof IPlayer) return;
    val player as IPlayer = e.damageSource.trueSource;
    
    var weaponCheck = false;
    for ore in player.mainHandHeldItem.ores {
        if(ore.name == "javelinMaster") weaponCheck=true;
    }

    if(!weaponCheck) {
        e.cancel();
        return;
    }

    e.amount = e.amount*1.5;
    if(player.world.random.nextInt(2)==0) e.entityLivingBase.addPotionEffect(<potion:potioncore:lightning>.makePotionEffect(1,0));
};

val boomerangMasterWeapon = mods.compatskills.TraitCreator.createTrait("boomerangMaster", 4, 3, "compatskills:weaponMasteryTab", 1, "trait|compatskills:weaponMastery");
boomerangMasterWeapon.name = "Boomerang master";
boomerangMasterWeapon.description = "Bonus 50% dmg and 50% for small explosion.";
boomerangMasterWeapon.icon = "spartanfire:textures/items/boomerang_dragon.png";

boomerangMasterWeapon.onAttackMob = function(e as crafttweaker.event.EntityLivingHurtEvent) {
    if(isNull(e.entityLivingBase)
    || e.entityLivingBase.world.isRemote()) return;

    if(!e.damageSource.trueSource instanceof IPlayer) return;
    val player as IPlayer = e.damageSource.trueSource;
    
    var weaponCheck = false;
    for ore in player.mainHandHeldItem.ores {
        if(ore.name == "boomerangMaster") weaponCheck=true;
    }

    if(!weaponCheck) {
        e.cancel();
        return;
    }

    e.amount = e.amount*1.5;
    if(player.world.random.nextInt(2)==0) e.entityLivingBase.addPotionEffect(<potion:potioncore:explode>.makePotionEffect(100,0));
};
