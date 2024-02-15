import crafttweaker.item.IItemStack as IItemStack;
import mods.jei.JEI.removeAndHide as rh;
import thaumcraft.aspect.CTAspectStack;
import mods.thaumcraft.ArcaneWorkbench;
import mods.thaumcraft.Infusion;


recipes.addShaped("CTcondenserrepair",  <thaumcraft:condenser_lattice>, 
 [[<minecraft:quartz>,<minecraft:quartz>,<minecraft:quartz>],
 [<minecraft:quartz>,<thaumcraft:condenser_lattice_dirty>,<minecraft:quartz>],
 [<minecraft:quartz>,<minecraft:quartz>,<minecraft:quartz>]]);


mods.thaumcraft.Infusion.registerRecipe(
"CTcrimsonprotalegg", "INFUSION" , <minecraft:spawn_egg>.withTag({EntityTag: {id: "thaumcraft:cultistportallesser"}}), 4,
[<aspect:alienis> * 20, <aspect:motus> * 50,<aspect:victus> * 100], <minecraft:egg>,
 [<minecraft:ender_eye>, <thaumcraft:void_seed>,<thaumcraft:void_seed>]);