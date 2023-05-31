
vsp= vsp+grv;
//don't walk off edges

if(grounded) &&(afraidofheights) &&(!place_meeting(x+hsp , y+1,oWall))
{
hsp = -hsp;



}
//horizontal collision
if (place_meeting(x+hsp,y,oWall))
{
	while(!place_meeting(x+sign(hsp),y,oWall))
	{
		x=x + sign(hsp);
	}
hsp=-hsp;


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
if (!place_meeting (x,y+1,oWall))
{
	grounded = false;
sprite_index=sEnemyJ;
image_speed=0;
	if (sign(vsp) >0) image_index = 1; else image_index=0;
}
else
{
	grounded = true;
image_speed=1;
if (hsp ==0)
{
sprite_index=sEnemy;	
	
}
else
{
 sprite_index=sEnemyR	
}


}


if (hsp !=0) image_xscale = sign(hsp) * size;
image_yscale = size;










