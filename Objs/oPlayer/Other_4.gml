/// @desc 

// override old save
if (file_exists(SAVEFILE)) file_delete(SAVEFILE);


// CREATE NEW SAVE

var file;
file = file_text_open_write(SAVEFILE);
file_text_write_real(file, room);	
file_text_write_real(file, global.kills);
file_text_write_real(file, global.deaths);
file_text_write_real(file, global.hasgun);
file_text_close(file);
var file;


