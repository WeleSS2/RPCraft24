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

#Rogue tab
val rogue=mods.compatskills.SkillCreator.createSkill("rogue", "textures/blocks/stonebrick.png");
rogue.name="Rogue";
rogue.setRankIcon(0, "reskillable:textures/rogue.png");
rogue.setEnabled(true);
rogue.setBaseLevelCost(0);
rogue.setLevelCap(10);
rogue.setLevelStaggering(["1|7"]);
rogue.setSkillPointInterval(1);
rogue.setHidden(true);

#Traits
val Archery = mods.compatskills.TraitCreator.createTrait("archery", 0, 0, "compatskills:rogue", 1,  "trait|compatskills:rogue");
Archery.name = "Archer";
Archery.description = "Archery - allow to use better bows.";
Archery.icon = "reskillable:textures/archery.png";

val Dagger = mods.compatskills.TraitCreator.createTrait("daggers", 4, 0, "compatskills:rogue", 1,  "trait|compatskills:rogue");
Dagger.name = "Assassin";
Dagger.description = "Powerful blows on backstabs using daggers.";
Dagger.icon = "reskillable:textures/dagger.png";

#Skills

#Stealth
val Stealth = mods.compatskills.TraitCreator.createTrait("stealth", 4, 1, "compatskills:rogue", 2,  "trait|compatskills:daggers");
Stealth.name = "Stealth strike";
Stealth.description = "Sneak attack vs target from behind using dagger deals x3 damage.";
Stealth.icon = "reskillable:textures/stealth.png";

Stealth.onAttackMob = function(e as crafttweaker.event.EntityLivingHurtEvent) {
    if(isNull(e.entityLivingBase)
    || e.entityLivingBase.world.isRemote()) return;

    if(!e.damageSource.trueSource instanceof IPlayer) return;
    val player as IPlayer = e.damageSource.trueSource;
    val mob = e.entityLivingBase;

    if(mob.lookingDirection.dotProduct(crafttweaker.world.IVector3d.create(player.x-mob.x,player.y-mob.y,player.z-mob.z))>0.0) return;
    
    var daggerCheck = false;
    for ore in player.mainHandHeldItem.ores {
        if(ore.name == "daggerRogue") daggerCheck=true;
    }

    if(!daggerCheck) return;

    e.amount = e.amount*5.0;
    server.commandManager.executeCommandSilent(server, "/particle crit "~mob.x~" "~ (mob.y + mob.eyeHeight) ~" "~mob.z~" .5 .5 .5 .1 50");
};

#Cloudstep
val Cloud = mods.compatskills.TraitCreator.createTrait("stealth_cloud", 4, 3, "compatskills:rogue", 1, "trait|compatskills:daggers");
Cloud.name = "Cloud step";
Cloud.description = "Gives invisibility on crouch.";
Cloud.icon = "reskillable:textures/cloud_step.png";

Cloud.onPlayerTick = function(e as crafttweaker.event.PlayerTickEvent) {
        if(e.player.world.isRemote()) return;
    val player as IPlayer = e.player;
    val world as IWorld = player.world;
    if(world.time % 100 != 0) return;

    if(!player.isSneaking) return;

    var findInvisibility = false;
    val potionsList = player.activePotionEffects;
    if(!potionsList.length != 0){
        for potion in potionsList {
            print(potion.effectName);
            if(potion.effectName == "effect.invisibility"){
                findInvisibility = true;
                break;
            }
        }
    }

    if(!findInvisibility)server.commandManager.executeCommandSilent(server, "/particle cloud "~player.x~" "~ (player.y + player.eyeHeight) ~" "~player.z~" .5 .5 .5 .1 50");

    player.addPotionEffect(<potion:minecraft:invisibility>.makePotionEffect(120,0));
};
