// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function KillPlayer(){
with (oAK48)  instance_destroy();
instance_change(oPDead,true)

direction = point_direction(other.x, other.y,x,y);
hsp = lengthdir_x(7,direction)-3  ;
vsp = lengthdir_y(1, direction) - 2 ;
if (sign(hsp) !=0) image_xscale=sign(hsp)*2;

global.kills -= global.killsthisroom;
global.deaths++;



}