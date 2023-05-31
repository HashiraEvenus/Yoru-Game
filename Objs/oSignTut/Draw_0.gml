draw_self();
if (nearby1) draw_sprite_ext(sMarker, 0, x, y-32,1,-1, 0, c_white, 1);

if (nearby1) {
	audio_play_sound(choose(),1,false);
	audio_sound_gain(choose(),0,50);
}
