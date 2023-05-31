draw_sprite_ext(sPixel,0,0,0,1280,200,0,c_black,1);
draw_sprite_ext(sPixel,0,0,620,1280,200,0,c_black,1);

draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_font(fSign);
draw_text(500,650,print);

if(holdspace>0) 
{
	

draw_text(500,700,"Keep Space pressed to skip");

}

















draw_sprite_ext(sPixel,0,0,0,1280,720,0,c_black,a);