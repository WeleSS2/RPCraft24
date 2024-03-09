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
val Weapon = mods.compatskills.TraitCreator.createTrait("sword", 0, 0, "compatskills:warrior", 2, "trait|compatskills:warrior");
Weapon.name = "Weapon master";
Weapon.description = "Weapon specjalist - allow to use better weapons.";
Weapon.icon = "reskillable:textures/weapon_specjalisation.png";

val Tank = mods.compatskills.TraitCreator.createTrait("armor", 4, 0, "compatskills:warrior", 2, "trait|compatskills:warrior");
Tank.name = "Armor master";
Tank.description = "Armor specjalist - allow to use better armors.";
Tank.icon = "reskillable:textures/armor_specjalisation.png";

val Shield = mods.compatskills.TraitCreator.createTrait("shield", 2, 0, "compatskills:warrior", 1, "trait|compatskills:warrior");
Shield.name = "Shield user";
Shield.description = "Shield specjalist - allow to use shields.";
Shield.icon = "reskillable:textures/shield_specjalisation.png";

val MagicKnight = mods.compatskills.TraitCreator.createTrait("hybridm", 2, 1, "compatskills:warrior", 3, "trait|compatskills:warrior");
MagicKnight.name = "Magic knight";
MagicKnight.description = "Hybrid of warrior and mage - allow using some spells.";
MagicKnight.icon = "reskillable:textures/magic_knight.png";

#Weapons specialisation
val MasterWeapon = mods.compatskills.TraitCreator.createTrait("weaponMastery", 0, 2, "compatskills:warrior", 2, "trait|compatskills:sword");
MasterWeapon.name = "Weapon specialisation";
MasterWeapon.description = "Forces holder to use specyfic type of weapon.";
MasterWeapon.icon = "reskillable:textures/weapon_mastery_specialisation.png";

#Armors specialisation
val MasterArmor = mods.compatskills.TraitCreator.createTrait("armorMastery", 4, 2, "compatskills:warrior", 2, "trait|compatskills:sword");
MasterArmor.name = "Armor specialisation";
MasterArmor.description = "Forces holder to use specyfic type of weapon.";
MasterArmor.icon = "reskillable:textures/weapon_mastery_specialisation.png";

#Skills
val YellowBrute = mods.compatskills.TraitCreator.createTrait("yellowBrute", 0, 3, "compatskills:warrior", 2, "trait|compatskills:armor");
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

val ps1 = mods.compatskills.TraitCreator.createTrait("ps1", 1, 3, "compatskills:warrior", 2, "trait|compatskills:warrior");
ps1.name = "ps1";
ps1.description = "ps1";
ps1.icon = "reskillable:textures/assad.png";

val ps2 = mods.compatskills.TraitCreator.createTrait("ps2", 2, 3, "compatskills:warrior", 2, "trait|compatskills:warrior");
ps2.name = "ps2";
ps2.description = "ps2";
ps2.icon = "reskillable:textures/assad.png";

val ps3 = mods.compatskills.TraitCreator.createTrait("ps3", 3, 3, "compatskills:warrior", 2, "trait|compatskills:warrior");
ps3.name = "ps3";
ps3.description = "ps3";
ps3.icon = "reskillable:textures/assad.png";

val ps4 = mods.compatskills.TraitCreator.createTrait("ps4", 4, 3, "compatskills:warrior", 2, "trait|compatskills:warrior");
ps4.name = "ps4";
ps4.description = "ps4";
ps4.icon = "reskillable:textures/assad.png";
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
    
    print("Checking weapon for Sword Master trait.");
    var weaponCheck = false;
    for ore in player.mainHandHeldItem.ores {
        print("Found ore: " + ore.name);
        if(ore.name == "swordMaster") {
            weaponCheck=true;
            break;
        }
    }

    print("Weapon check result: " + weaponCheck);
    if(!weaponCheck) {
        e.amount=e.amount/4.0;
        print("Player does not have the correct weapon. Reducing damage.");
        return;
    }

    e.amount = e.amount+4.0;
    e.entityLivingBase.addPotionEffect(<potion:minecraft:wither>.makePotionEffect(100,0));
    print("Applied Sword Master bonus damage and wither effect.");
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
    
    print("Checking weapon for Saber Master trait.");
    var weaponCheck = false;
    for ore in player.mainHandHeldItem.ores {
        print("Found ore: " + ore.name);
        if(ore.name == "saberMaster") {
            weaponCheck=true;
            break;
        }
    }

    print("Weapon check result: " + weaponCheck);
    if(!weaponCheck) {
        e.amount=e.amount/4.0;
        print("Player does not have the correct weapon. Reducing damage.");
        return;
    }

    e.amount = e.amount*1.5;
    e.entityLivingBase.addPotionEffect(<potion:minecraft:wither>.makePotionEffect(100,0));
    print("Applied Saber Master bonus damage and wither effect.");
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
    
    print("Checking weapon for Katana Master trait.");
    var weaponCheck = false;
    for ore in player.mainHandHeldItem.ores {
        print("Found ore: " + ore.name);
        if(ore.name == "katanaMaster") {
            weaponCheck=true;
            break;
        }
    }

    print("Weapon check result: " + weaponCheck);
    if(!weaponCheck) {
        e.amount=e.amount/4.0;
        print("Player does not have the correct weapon. Reducing damage.");
        return;
    }

    e.amount = e.amount+4.0;
    if(player.world.random.nextInt(5)==0)e.entityLivingBase.addPotionEffect(<potion:lycanitesmobs:paralysis>.makePotionEffect(60,0));
    print("Applied Katana Master bonus damage and paralysis effect.");
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
    
    print("Checking weapon for Rapier Master trait.");
    var weaponCheck = false;
    for ore in player.mainHandHeldItem.ores {
        print("Found ore: " + ore.name);
        if(ore.name == "rapierMaster") {
            weaponCheck=true;
            break;
        }
    }

    print("Weapon check result: " + weaponCheck);
    if(!weaponCheck) {
        e.amount=e.amount/4.0;
        print("Player does not have the correct weapon. Reducing damage.");
        return;
    }

    e.amount = e.amount*1.5;
    if(player.world.random.nextInt(10)==0) stripArmor(e.entityLivingBase, player);
    print("Applied Rapier Master bonus damage and armor strip effect.");
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
    
    print("Checking weapon for Battleaxe Master trait.");
    var weaponCheck = false;
    for ore in player.mainHandHeldItem.ores {
        print("Found ore: " + ore.name);
        if(ore.name == "battleaxeMaster") {
            weaponCheck=true;
            break;
        }
    }

    print("Weapon check result: " + weaponCheck);
    if(!weaponCheck) {
        e.amount=e.amount/4.0;
        print("Player does not have the correct weapon. Reducing damage.");
        return;
    }

    e.amount = e.amount*1.5;
    e.entityLivingBase.addPotionEffect(<potion:minecraft:wither>.makePotionEffect(100,1));
    print("Applied Battleaxe Master bonus damage and wither effect.");
};

val longswordMasterWeapon = mods.compatskills.TraitCreator.createTrait("longswordMaster", 0, 1, "compatskills:weaponMasteryTab", 1, "trait|compatskills:weaponMastery");
longswordMasterWeapon.name = "Longsword master";
longswordMasterWeapon.description = "Bonus 50% dmg and 10% chance fear to nearby mobs for 5 sec.";
longswordMasterWeapon.icon = "spartanfire:textures/items/longsword_dragon.png";

longswordMasterWeapon.onAttackMob = function(e as crafttweaker.event.EntityLivingHurtEvent) {
    if(isNull(e.entityLivingBase) || e.entityLivingBase.world.isRemote()) return;

    if(!e.damageSource.trueSource instanceof IPlayer) return;
    val player as IPlayer = e.damageSource.trueSource;
    
    print("[Longsword Master] Checking weapon for Longsword Master trait.");
    var weaponCheck = false;
    for ore in player.mainHandHeldItem.ores {
        print("[Longsword Master] Found ore: " + ore.name);
        if(ore.name == "longswordMaster") {
            weaponCheck = true;
            break;
        }
    }

    print("[Longsword Master] Weapon check result: " + weaponCheck);
    if(!weaponCheck) {
        e.amount = e.amount / 4.0;
        print("[Longsword Master] Player does not have the correct weapon. Reducing damage.");
        return;
    }

    e.amount = e.amount * 1.5;
    if(player.world.random.nextInt(10) == 0) {
        e.entityLivingBase.addPotionEffect(<potion:lycanitesmobs:fear>.makePotionEffect(100,0));
        print("[Longsword Master] Applied fear effect to the target.");
    }
    print("[Longsword Master] Applied Longsword Master bonus damage.");
};

val greatswordMasterWeapon = mods.compatskills.TraitCreator.createTrait("greatswordMaster", 1, 1, "compatskills:weaponMasteryTab", 1, "trait|compatskills:weaponMastery");
greatswordMasterWeapon.name = "Greatsword master";
greatswordMasterWeapon.description = "Bonus +4 dmg and 10% chance fear to nearby mobs for 5 sec.";
greatswordMasterWeapon.icon = "spartanfire:textures/items/greatsword_dragon.png";

greatswordMasterWeapon.onAttackMob = function(e as crafttweaker.event.EntityLivingHurtEvent) {
    if(isNull(e.entityLivingBase) || e.entityLivingBase.world.isRemote()) return;

    if(!e.damageSource.trueSource instanceof IPlayer) return;
    val player as IPlayer = e.damageSource.trueSource;
    
    print("[Greatsword Master] Checking weapon for Greatsword Master trait.");
    var weaponCheck = false;
    for ore in player.mainHandHeldItem.ores {
        print("[Greatsword Master] Found ore: " + ore.name);
        if(ore.name == "greatswordMaster") {
            weaponCheck = true;
            break;
        }
    }

    print("[Greatsword Master] Weapon check result: " + weaponCheck);
    if(!weaponCheck) {
        e.amount = e.amount / 4.0;
        print("[Greatsword Master] Player does not have the correct weapon. Reducing damage.");
        return;
    }

    e.amount = e.amount + 4.0;
    if(player.world.random.nextInt(10) == 0) e.entityLivingBase.addPotionEffect(<potion:lycanitesmobs:fear>.makePotionEffect(100,0));
    print("[Greatsword Master] Applied Greatsword Master bonus damage and potential fear effect.");
};

val maceMasterWeapon = mods.compatskills.TraitCreator.createTrait("maceMaster", 2, 1, "compatskills:weaponMasteryTab", 1, "trait|compatskills:weaponMastery");
maceMasterWeapon.name = "Mace master";
maceMasterWeapon.description = "Bonus 50% dmg and vulnerable for 5 sec.";
maceMasterWeapon.icon = "spartanfire:textures/items/mace_dragon.png";

maceMasterWeapon.onAttackMob = function(e as crafttweaker.event.EntityLivingHurtEvent) {
    if(isNull(e.entityLivingBase) || e.entityLivingBase.world.isRemote()) return;

    if(!e.damageSource.trueSource instanceof IPlayer) return;
    val player as IPlayer = e.damageSource.trueSource;
    
    print("[Mace Master] Checking weapon for Mace Master trait.");
    var weaponCheck = false;
    for ore in player.mainHandHeldItem.ores {
        print("[Mace Master] Found ore: " + ore.name);
        if(ore.name == "maceMaster") {
            weaponCheck=true;
            break;
        }
    }

    print("[Mace Master] Weapon check result: " + weaponCheck);
    if(!weaponCheck) {
        e.amount=e.amount/4.0;
        print("[Mace Master] Player does not have the correct weapon. Reducing damage.");
        return;
    }

    e.amount = e.amount*1.5;
    e.entityLivingBase.addPotionEffect(<potion:potioncore:vulnerable>.makePotionEffect(100,0));
    print("[Mace Master] Applied Mace Master bonus damage and vulnerable effect.");
};

val hammerMasterWeapon = mods.compatskills.TraitCreator.createTrait("hammerMaster", 3, 1, "compatskills:weaponMasteryTab", 1, "trait|compatskills:weaponMastery");
hammerMasterWeapon.name = "Hammer master";
hammerMasterWeapon.description = "Bonus 50% dmg and weight effect for 5 sec.";
hammerMasterWeapon.icon = "spartanfire:textures/items/hammer_dragon.png";

hammerMasterWeapon.onAttackMob = function(e as crafttweaker.event.EntityLivingHurtEvent) {
    if(isNull(e.entityLivingBase) || e.entityLivingBase.world.isRemote()) return;

    if(!e.damageSource.trueSource instanceof IPlayer) return;
    val player as IPlayer = e.damageSource.trueSource;
    
    print("[Hammer Master] Checking weapon for Hammer Master trait.");
    var weaponCheck = false;
    for ore in player.mainHandHeldItem.ores {
        print("[Hammer Master] Found ore: " + ore.name);
        if(ore.name == "hammerMaster") {
            weaponCheck = true;
            break;
        }
    }

    print("[Hammer Master] Weapon check result: " + weaponCheck);
    if(!weaponCheck) {
        e.amount = e.amount / 4.0;
        print("[Hammer Master] Player does not have the correct weapon. Reducing damage.");
        return;
    }

    e.amount = e.amount * 1.5;
    e.entityLivingBase.addPotionEffect(<potion:lycanitesmobs:weight>.makePotionEffect(100,0));
    print("[Hammer Master] Applied Hammer Master bonus damage and weight effect.");
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
    
    print("[Warhammer Master] Checking weapon for Warhammer Master trait.");
    var weaponCheck = false;
    for ore in player.mainHandHeldItem.ores {
        print("[Warhammer Master] Found ore: " + ore.name);
        if(ore.name == "warhammerMaster") {
            weaponCheck = true;
            break;
        }
    }

    print("[Warhammer Master] Weapon check result: " + weaponCheck);
    if(!weaponCheck) {
        e.amount = e.amount / 4.0;
        print("[Warhammer Master] Player does not have the correct weapon. Reducing damage.");
        return;
    }

    e.amount = e.amount * 1.5;
    e.entityLivingBase.addPotionEffect(<potion:potioncore:broken_armor>.makePotionEffect(100,0));
    print("[Warhammer Master] Applied Warhammer Master bonus damage and armor penetration effect.");
};

val pikeMasterWeapon = mods.compatskills.TraitCreator.createTrait("pikeMaster", 0, 2, "compatskills:weaponMasteryTab", 1, "trait|compatskills:weaponMastery");
pikeMasterWeapon.name = "Pike master";
pikeMasterWeapon.description = "Bonus 50% dmg and blindness for 5 sec.";
pikeMasterWeapon.icon = "spartanfire:textures/items/pike_dragon.png";

pikeMasterWeapon.onAttackMob = function(e as crafttweaker.event.EntityLivingHurtEvent) {
    if(isNull(e.entityLivingBase) || e.entityLivingBase.world.isRemote()) return;

    if(!e.damageSource.trueSource instanceof IPlayer) return;
    val player as IPlayer = e.damageSource.trueSource;
    
    print("[Pike Master] Checking weapon for Pike Master trait.");
    var weaponCheck = false;
    for ore in player.mainHandHeldItem.ores {
        print("[Pike Master] Found ore: " + ore.name);
        if(ore.name == "pikeMaster") {
            weaponCheck = true;
            break;
        }
    }

    print("[Pike Master] Weapon check result: " + weaponCheck);
    if(!weaponCheck) {
        e.amount = e.amount / 4.0;
        print("[Pike Master] Player does not have the correct weapon. Reducing damage.");
        return;
    }

    e.amount = e.amount * 1.5;
    e.entityLivingBase.addPotionEffect(<potion:minecraft:blindness>.makePotionEffect(100,0));
    print("[Pike Master] Applied Pike Master bonus damage and blindness effect.");
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
    
    print("[Halberd Master] Checking weapon for Halberd Master trait.");
    var weaponCheck = false;
    for ore in player.mainHandHeldItem.ores {
        print("[Halberd Master] Found ore: " + ore.name);
        if(ore.name == "halberdMaster") {
            weaponCheck = true;
            break;
        }
    }

    print("[Halberd Master] Weapon check result: " + weaponCheck);
    if(!weaponCheck) {
        e.amount = e.amount / 4.0;
        print("[Halberd Master] Player does not have the correct weapon. Reducing damage.");
        return;
    }

    e.amount = e.amount * 1.5;
    e.entityLivingBase.addPotionEffect(<potion:potioncore:broken_armor>.makePotionEffect(100,0));
    print("[Halberd Master] Applied Halberd Master bonus damage and armor penetration effect.");
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
    
    print("[Spear Master] Checking weapon for Spear Master trait.");
    var weaponCheck = false;
    for ore in player.mainHandHeldItem.ores {
        print("[Spear Master] Found ore: " + ore.name);
        if(ore.name == "spearMaster") {
            weaponCheck = true;
            break;
        }
    }

    print("[Spear Master] Weapon check result: " + weaponCheck);
    if(!weaponCheck) {
        e.amount = e.amount / 4.0;
        print("[Spear Master] Player does not have the correct weapon. Reducing damage.");
        return;
    }

    e.amount = e.amount * 1.5;
    e.entityLivingBase.addPotionEffect(<potion:minecraft:blindness>.makePotionEffect(100,0));
    print("[Spear Master] Applied Spear Master bonus damage and blindness effect.");
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
    
    print("[Glaive Master] Checking weapon for Glaive Master trait.");
    var weaponCheck = false;
    for ore in player.mainHandHeldItem.ores {
        print("[Glaive Master] Found ore: " + ore.name);
        if(ore.name == "glaiveMaster") {
            weaponCheck = true;
            break;
        }
    }

    print("[Glaive Master] Weapon check result: " + weaponCheck);
    if(!weaponCheck) {
        e.amount = e.amount / 4.0;
        print("[Glaive Master] Player does not have the correct weapon. Reducing damage.");
        return;
    }

    e.amount = e.amount * 1.5;
    e.entityLivingBase.addPotionEffect(<potion:lycanitesmobs:penetration>.makePotionEffect(100,0));
    print("[Glaive Master] Applied Glaive Master bonus damage and penetration effect.");
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
    
    print("[Staff Master] Checking weapon for Staff Master trait.");
    var weaponCheck = false;
    for ore in player.mainHandHeldItem.ores {
        print("[Staff Master] Found ore: " + ore.name);
        if(ore.name == "staffMaster") {
            weaponCheck = true;
            break;
        }
    }

    print("[Staff Master] Weapon check result: " + weaponCheck);
    if(!weaponCheck) {
        e.amount = e.amount / 4.0;
        print("[Staff Master] Player does not have the correct weapon. Reducing damage.");
        return;
    }

    e.amount = e.amount * 1.5;
    e.entityLivingBase.addPotionEffect(<potion:lycanitesmobs:weight>.makePotionEffect(100,0));
    print("[Staff Master] Applied bonus damage and weight effect.");
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
    
    print("[Throwing Knife Master] Checking weapon for Throwing Knife Master trait.");
    var weaponCheck = false;
    for ore in player.mainHandHeldItem.ores {
        print("[Throwing Knife Master] Found ore: " + ore.name);
        if(ore.name == "throwingKnifeMaster") {
            weaponCheck = true;
            break;
        }
    }

    print("[Throwing Knife Master] Weapon check result: " + weaponCheck);
    if(!weaponCheck) {
        e.amount = e.amount / 4.0;
        print("[Throwing Knife Master] Player does not have the correct weapon. Reducing damage.");
        return;
    }

    e.amount = e.amount * 1.5;
    e.entityLivingBase.addPotionEffect(<potion:minecraft:weakness>.makePotionEffect(100,2));
    print("[Throwing Knife Master] Applied bonus damage and weakness effect.");
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
    
    print("[Throwing Axe Master] Checking weapon for Throwing Axe Master trait.");
    var weaponCheck = false;
    for ore in player.mainHandHeldItem.ores {
        print("[Throwing Axe Master] Found ore: " + ore.name);
        if(ore.name == "throwingAxeMaster") {
            weaponCheck = true;
            break;
        }
    }

    print("[Throwing Axe Master] Weapon check result: " + weaponCheck);
    if(!weaponCheck) {
        e.amount = e.amount / 4.0;
        print("[Throwing Axe Master] Player does not have the correct weapon. Reducing damage.");
        return;
    }

    e.amount = e.amount * 1.5;
    e.entityLivingBase.addPotionEffect(<potion:lycanitesmobs:smited>.makePotionEffect(100,0));
    print("[Throwing Axe Master] Applied bonus damage and smited effect.");
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
    
    print("[Javelin Master] Checking weapon for Javelin Master trait.");
    var weaponCheck = false;
    for ore in player.mainHandHeldItem.ores {
        print("[Javelin Master] Found ore: " + ore.name);
        if(ore.name == "javelinMaster") {
            weaponCheck = true;
            break;
        }
    }

    print("[Javelin Master] Weapon check result: " + weaponCheck);
    if(!weaponCheck) {
        e.amount = e.amount / 4.0;
        print("[Javelin Master] Player does not have the correct weapon. Reducing damage.");
        return;
    }

    e.amount = e.amount * 1.5;
    if(player.world.random.nextInt(2) == 0) e.entityLivingBase.addPotionEffect(<potion:potioncore:lightning>.makePotionEffect(1,0));
    print("[Javelin Master] Applied bonus damage and potential lightning effect.");
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
    
    print("[Boomerang Master] Checking weapon for Boomerang Master trait.");
    var weaponCheck = false;
    for ore in player.mainHandHeldItem.ores {
        print("[Boomerang Master] Found ore: " + ore.name);
        if(ore.name == "boomerangMaster") {
            weaponCheck = true;
            break;
        }
    }

    print("[Boomerang Master] Weapon check result: " + weaponCheck);
    if(!weaponCheck) {
        e.amount = e.amount / 4.0;
        print("[Boomerang Master] Player does not have the correct weapon. Reducing damage.");
        return;
    }

    e.amount = e.amount * 1.5;
    if(player.world.random.nextInt(2) == 0) e.entityLivingBase.addPotionEffect(<potion:potioncore:explode>.makePotionEffect(100,0));
    print("[Boomerang Master] Applied bonus damage and potential small explosion effect.");
};

# Tank Specialisation
val armorMasteryTab=mods.compatskills.SkillCreator.createSkill("armorMasteryTab", "textures/blocks/stonebrick.png");
armorMasteryTab.name="Armor mastery";
armorMasteryTab.setRankIcon(0, "reskillable:textures/armor_mastery_specialisation.png");
armorMasteryTab.setEnabled(true);
armorMasteryTab.setBaseLevelCost(1); 
armorMasteryTab.setLevelStaggering(["1|0"]);
armorMasteryTab.setLevelCap(2);
armorMasteryTab.setSkillPointInterval(2);
mods.compatskills.VisibilityLock.addVisibilityLock(<skill:compatskills:armorMasteryTab>, "trait|compatskills:armorMastery");

/*
Early------
Leather : speed I, jump I
Chain, Iron : Absorption 2hp
Scarlite : Str I
Gold, Bookwyrm : Magic shield 6hp, 75% magic dmg
Silver : Poison, Wither res. Regeneration I
Death Worm : Step Up I, Speed I, Jump I
Myrmex : Poison res, Haste I
Copper : Night Vision
Steel, Thaumium : Absorption 2hp, Res I
Wool, Ice : Speed I, Absorption 4hp


MId--------
Diamond, Netherite, Obsidian : Absorption 8hp, Res I
Neptunium: Absorption 10hp, Water Breathing
Fire Dragon : Fire resistance, Str II, Absorption 6hp
Ice dragon : Str II, Absorption 12hp
Sea snake : Water Breathing, Str II
Troll : Regeneration I, Absorption 10hp


Late------
Dragon : Creative Fly, Str II
Golem : Regeneration II, Absorption 20hp, Res II
Living : Regeneration I, Absorption 8hp
Sentient : Regeneration II, Absorption 12hp, Str I
*/
