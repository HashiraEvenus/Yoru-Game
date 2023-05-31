/// @description Equip Gun
global.hasgun=true;
instance_create_layer (oPlayer.x, oPlayer.y, "Gun", oAK48);
instance_destroy();
