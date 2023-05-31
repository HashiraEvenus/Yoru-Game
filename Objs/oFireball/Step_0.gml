	x += lengthdir_x(spd, direction);
	y +=lengthdir_y(spd,direction);
	 firingdelay = firingdelay - 1;
if (keyboard_check(ord("1"))){
if (place_meeting(x,y,pShootable)){
	with(instance_place(x,y,pShootable)){
		
hp = -3; 
flash = 1; 
hitfrom = other.direction 
	}
	instance_destroy();
}
}
if (place_meeting(x,y,oWall)) && (image_index !=0) 
{
	while (place_meeting( x,y,oWall))
	
	{
	x -=lengthdir_x(1,-direction);
	y -=lengthdir_y(1,direction);
	}
	spd=0;
	instance_change (oFireballSpark,true);
	layer_add_instance("Tiles", id);
	depth+=4;
	}