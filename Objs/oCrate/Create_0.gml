/// @description Create Wall
grv = 0.3;
mywall = instance_create_layer(x,y,layer,oWall);


with (mywall)
{
	image_xscale = other.sprite_width / sprite_width;
	image_yscale = other.sprite_height / sprite_height;
	
}
