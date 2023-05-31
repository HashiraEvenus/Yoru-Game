/// @desc Screen Shake Magnitude Frames
/// @arg Magnitude sets strength of the shake (radius in pixels)
/// @arg Frames sets the length of the shake and frames 60=1s  at 60fps
function ScreenShake(argument0, argument1) {

	with (oCamera)
	{
		if (argument0 > shake_remain)
		{
			shake_magnitude = argument0;
			shake_remain=argument0;
			shake_length=argument1;
		
		
		}
	
	}


}
