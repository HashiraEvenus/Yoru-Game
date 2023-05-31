/// Approach (a,b,amount)
///@descreption Approach 
///@param a
///@param b
///@param amount

//Moves a towards b by amount and returns result
//Example

//speed = Approach(hp,0,damage_amount);
//hp = Approach(hp,0,damage_amount);
//hp = Approach(hp,max_hp,damage_amount);
//x=Approach(x,target_x,move_speed);


function Approach(){
if (argument0 <argument1)
{
	argument0+=argument2;
	if (argument0>argument1)
	return argument1;
}
else{
	argument0-=argument1;
	if(argument0<argument1)
	return argument1;
}
return argument0;
}