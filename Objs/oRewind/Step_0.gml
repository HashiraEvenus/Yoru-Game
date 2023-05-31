var rewind_key = keyboard_check(ord("O"));

// Basic movement, move only if the rewind key is not pressed
if (!rewind_key) {
	oPlayer.x += keyboard_check(vk_right) - keyboard_check(vk_left);
	oPlayer.y += keyboard_check(vk_down) - keyboard_check(vk_up);
}

// Add current step's data to the list as an array
if (!rewind_key)  // Not being rewinded
    ds_list_add(td, [oPlayer.x, oPlayer.y]); // <- You gotta store as much data as you can, to make the reverse realistic

// Delete first element if it goes past the max time
if (ds_list_size(td) > 60 * max_seconds) { // max_seconds is 3
    ds_list_delete(td, 0);
}

// Now to rewind
var size = ds_list_size(td);

if (rewind_key && size + td_rewind > 0) { // Second condition makes sure that we don't go past the list size
    td_rewind--; // Go back

    // Reapply data from list
    var arr = td[| size + td_rewind];
    oPlayer.x = arr[0];
    oPlayer.y = arr[1];
   
}
// Reset rewind
else if (!rewind_key) {
    td_rewind = 0;
}