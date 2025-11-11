//Simple Transition. When player ship is within the bounding box, if they press E it will 
//Need to get a UI to pop up to let the ship know it can land. 
if(keyboard_check_pressed(ord("E")))
{
	room_goto(destination);
	if(instance_exists(obj_Game) && instance_exists(obj_Ship))
	{
		obj_Game.ship_hp = obj_Ship.current_hp;
		show_debug_message("Ship HP Saved to Obj_Game")
	}
}