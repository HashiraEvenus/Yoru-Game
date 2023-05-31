#region//get player input
if (hascontrol)
{ 
key_left = keyboard_check(ord("A")) || keyboard_check(vk_left);
key_right = keyboard_check(ord("D"))|| keyboard_check(vk_right);
key_jump = keyboard_check(vk_space) || keyboard_check(ord("W")) ||keyboard_check(vk_up);



if (key_left) || (key_right) || (key_jump)
{
 controller=0;	
	
}
#region //Gamepad Input
if (abs(gamepad_axis_value(0,gp_axislh)) > 0.2)
{
 key_left=abs(min(gamepad_axis_value(0,gp_axislh),0));
 key_right=max(gamepad_axis_value(0,gp_axislh),0)
 controller =1;
	

}
if(gamepad_button_check_pressed(0,gp_face1))
{
	key_jump=1;
	controller =1;
}
if(gamepad_button_check_pressed(0,gp_face2))
{
	key_skill=1;
	controller =1;
}

}
else
{
	key_right=0;
	key_left=0;
	key_jump=0;
	key_skill=0;
}
#endregion


#endregion


// calculate movement
var move = key_right -key_left;

hsp = move * walksp;

vsp= vsp+grv;
//jumping
canjump-=1;
if (canjump>0) && (key_jump)
{
	vsp=-7;
	canjump=0;
}
//horizontal collision
if (place_meeting(x+hsp,y,oWall))
{
	while(!place_meeting(x+sign(hsp),y,oWall))
	{
		x=x + sign(hsp);
	}
hsp=0;


}


x=x +hsp;
         																																								
//vertical collision
if (place_meeting(x,y+vsp,oWall))
{
	while(!place_meeting(x,y+sign(vsp),oWall))
	{
		y=y + sign(vsp);
	}
vsp=0;


}
y=y +vsp;


if(place_meeting(x,y,oWall))
{
for (var i=0; i<1000; ++i){
	//right
	if (!place_meeting(x + i, y, oWall)) {
		x+=i;
		break;
	}
	//left
	if (!place_meeting(x-i,y,oWall)){
		x-=i;
		break;
	}
	//up
	if (!place_meeting(x,y-i,oWall)){
		y-=i;
		break;
	}
	
		
	//top right
	if (!place_meeting(x+i,y-i,oWall)){
		x+=i;
		y-=i;
		break;
	}
	//top left
	if (!place_meeting(x-i,y-i,oWall)){
		x-=i;
		y-=i;
		break;
	}
	
}}



//animation
var aimside = sign(mouse_x-x);
if instance_exists(oAK48) &&(aimside !=0) image_xscale = aimside*2;
if (!place_meeting (x,y+1,oWall))
{
sprite_index=SplayerJ;
image_speed=0;
	if (sign(vsp) >0) image_index = 1; else image_index=0;
}
else
{
	canjump=10;
if( sprite_index == SplayerJ) 
{
	audio_sound_pitch(snStep1,choose(0.8, 1.0, 1.3));
	audio_play_sound (snStep1,4,false);
	repeat(5)
{
with (instance_create_layer(x, bbox_bottom,"Bullet",oDust))
	{
	vsp=0;
	}
}

}
image_speed=1;
if (hsp ==0)
{
	
sprite_index=Splayer;	
	
}
 
else 
{
 sprite_index=SplayerR	
 if (aimside != sign(hsp)) sprite_index = sPlayerRb;
 }
if (keyboard_check(ord("1"))) {
	
sprite_index= sPlayerSkill; 

 
{
	recoil=4;
	firingdelay=1;
	ScreenShake(1,10);
	audio_sound_pitch(snShot,choose(0.8,0.9, 1.0, 1.1));
	audio_play_sound(snShot,5,false);
	with(instance_create_layer(x,y,"Bullet",oFireball))
	{
	spd=10;
	direction= other.image_angle + random_range (-3,3);
	image_angle=direction;
	}
}	
	

}
}

if sign(hsp) != 0
{
    if sign(image_xscale) != sign(hsp) image_xscale *= -1;
}

//rewind time everybody





// test 





