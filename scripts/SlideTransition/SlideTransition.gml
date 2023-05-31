/// @desc SlideTransition(mode, target_room)
/// @arg Mode sets transition mode between next, restart and go too.
/// @arg Sets target room when using the goto mode.
function SlideTransition() {

	with (oTransition)
	{
		mode = argument[0];
		if (argument_count>1) target = argument[1];
	}


}
