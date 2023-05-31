x = owner.x-5;
y=owner.y+4;



image_xscale =abs(owner.image_xscale);
image_yscale =abs(owner.image_yscale);

if (instance_exists(oPlayer))
{
	if (oPlayer.x<x) image_yscale=-image_yscale;
	if (point_distance(oPlayer.x,oPlayer.y,x,y) <600)
	{
	image_angle =point_direction(x,y,oPlayer.x,oPlayer.y);
	countdown--;
	if (countdown<=0)
	{
		countdown=countdownrate;
		if(!collision_line(x,y,oPlayer.x,oPlayer.y,oWall,false,false))
		{
				
				//bullet code in here
				audio_sound_pitch(snShot,choose(0.8,0.9, 1.0, 1.1));
				audio_play_sound(snShot,5,false);
				with(instance_create_layer(x,y,"Bullet",oEBullet))
				{
				spd=10;
				direction= other.image_angle + random_range (-3,3);
				image_angle=direction;
				}
	}
	}
	}	
	}
	
