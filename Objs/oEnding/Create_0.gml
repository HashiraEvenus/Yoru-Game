gunsprite=layer_sprite_get_id("TitleAssets","gGun");

if(global.hasgun==true) && (global.kills>0)
{
endtext[0] = "You murdered "+string(global.kills) +"Tenrias...";	
if (global.kills==1) endtext[0] = "You exterminated just one Tenria? Weakling!";
endtext[1] = "Do you feel satisfied...";
endtext[2] = "Human?"
endtext[3] = "Oh...  ";
endtext[4] = "Good... good. . .";
endtext[5] = "being satisfied by your very own self is good...";
endtext[6] = "Now, however... what am I supposed to tell to my superordinates?";
endtext[7] = "That my army has been slain by a lowlife peasant?";
endtext[8] = "Ooh... ";
endtext[9] = "I can't just let this go that way...";
endtext[10] = "Your way.";
}
else
{	
	layer_sprite_destroy(gunsprite);
	endtext[0] = "So you really killed none of them."
	endtext[1] = "Some you even befriended..."
	endtext[2] = "That is so sweet..."	  
	endtext[3] = "Prepare yourself for your reward."
	
	
}

spd = 0.6;
letters = 0;
currentline =0;
length = string_length(endtext[currentline]);
text= "";
