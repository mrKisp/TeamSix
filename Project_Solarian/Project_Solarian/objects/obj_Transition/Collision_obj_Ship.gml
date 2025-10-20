//Simple Transition. When player ship is within the bounding box, if they press E it will 
//Need to get a UI to pop up to let the ship know it can land. 
if (keyboard_check_pressed(ord("E")))
{
	room_goto(destination);
}