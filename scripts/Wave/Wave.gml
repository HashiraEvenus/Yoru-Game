///Wave (from, to, duration,offset)

// returns value that will wave back and forth between [from-to] over [duration] seconds
//examples

//image_angle=Wave(-45,45,2,0) ---> go back and forth for 2 secs 90 degrees
//x = Wave(-10,10,1,0)		   ---> move left and right quickly

// SQUISHY OBJECT
// image_xscale = Wave(0.5,2.0,1.0,0.0)
//image_yscale =Wave(2.0,0.5,1,0.0)
function Wave (){
var a4 = (argument1 -argument0)*0.5;
return argument0+a4+sin((((current_time*0.001)+argument2*argument3)/argument2)*(pi*2))*a4;}