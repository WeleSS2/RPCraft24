#reloadable

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

events.onPlayerAttackEntity(function(e as crafttweaker.event.PlayerAttackEntityEvent){

});

events.onBlockHarvestDrops(function(e as crafttweaker.event.BlockHarvestDropsEvent){

});

events.onEntityLivingHurt(function(e as crafttweaker.event.EntityLivingHurtEvent) {
    if(isNull(e.entityLivingBase)
    || e.entityLivingBase.world.isRemote()) return;

    if(!e.damageSource.getTrueSource() instanceof IPlayer) return;

    val player as IPlayer= e.damageSource.getTrueSource();

    player.addPotionEffect(<potion:minecraft:strength>.makePotionEffect(200, 0));
});

events.onEntityLivingDeath(function(e as crafttweaker.event.EntityLivingDeathEvent) {

});

events.onPlayerTick(function(e as crafttweaker.event.PlayerTickEvent) {

});


events.onPlayerInteractBlock(function(e as crafttweaker.event.PlayerInteractBlockEvent) {

});
