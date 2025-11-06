//Simple Transition. When player character  is within the bounding box, if they press E it will 
//Need to get a UI to pop up to let the player can extract to Solar System. 
if(keyboard_check_pressed(ord("E")))
{
	room_goto(destination);
}
//Clears the tutorial ui boxes so that the tutorial doesn't show up everywhere.
if(global.items.datapad == 3)
{
	global.items.datapad = 0;
	layer_set_visible("UI_Tutorial_1", false);
	layer_set_visible("UI_Tutorial_2", false);
	layer_set_visible("UI_Tutorial_3", false);
}