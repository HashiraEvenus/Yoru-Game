/// @desc Draw score and Deaths 

if (room !=oMenu) &&(instance_exists(oPlayer)) && (global.kills>=0)

{

killtextscale=max(killtextscale *0.95,0.7);

DrawSetText(c_black, fMenu, fa_right, fa_top);
draw_text_transformed(RES_W-8,12,"Tenrias Murdered: "+string(global.kills) , killtextscale, killtextscale,0)
draw_set_colour(c_white);
draw_text_transformed(RES_W-10,10,"Tenrias Murdered: "+string(global.kills) , killtextscale, killtextscale,0)
}
if (room !=oMenu) && (instance_exists(oPlayer))&&(global.deaths>=0)
{
	deathtextscale=max(deathtextscale *0.90, 0.7);
	DrawSetText(c_black, fMenu, fa_right,fa_top);
draw_text_transformed(RES_W-8,52,"Deaths: "+string(global.deaths) , deathtextscale, deathtextscale,0)
draw_set_colour(c_white);
draw_text_transformed(RES_W-10,50, "Deaths: "+ string(global.deaths), deathtextscale, deathtextscale,0)


}

if (room !=oMenu) &&(instance_exists(oPDead)) && (global.kills>=0)

{

killtextscale=max(killtextscale *0.95,0.7);

DrawSetText(c_black, fMenu, fa_right, fa_top);
draw_text_transformed(RES_W-8,12,"Tenrias Murdered: "+string(global.kills) , killtextscale, killtextscale,0)
draw_set_colour(c_white);
draw_text_transformed(RES_W-10,10,"Tenrias Murdered: "+string(global.kills) , killtextscale, killtextscale,0)
}
if (room !=oMenu) && (instance_exists(oPDead))&&(global.deaths>=0)
{
	deathtextscale=max(deathtextscale *0.90, 0.7);
	DrawSetText(c_black, fMenu, fa_right,fa_top);
draw_text_transformed(RES_W-8,52,"Deaths: "+string(global.deaths) , deathtextscale, deathtextscale,0)
draw_set_colour(c_white);
draw_text_transformed(RES_W-10,50, "Deaths: "+ string(global.deaths), deathtextscale, deathtextscale,0)


}
