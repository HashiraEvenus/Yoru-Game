//basic movement variables 
hsp = 0;
vsp = 0;
grv = 0.3;
walksp = 5;
 
 controller=0;
 hascontrol=true;
 canjump = 0;
 
 audio_sound_pitch(snShot, 0.8)
 
 
 //rewind
 
td = ds_list_create(); // list that stores variables for each step
td_rewind = 0;

max_seconds = 3; 

