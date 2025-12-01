//Simple Transition. When player character  is within the bounding box, if they press E it will 
//Need to get a UI to pop up to let the player can extract to Solar System. 
if(global.items.datapad >= 3)
{
	if(keyboard_check_pressed(ord("E")) && !instance_exists(obj_Text))
	{
		room_goto(destination);
		show_debug_message("ship x: " + string(ship_last_x));
		show_debug_message("ship y: " + string(ship_last_y));
		// once obj is in room then we move their x and y using the variable
	
		if(instance_exists(obj_Game) && instance_exists(obj_Player_Pilot))
		{
			obj_Game.player_hp = obj_Player_Pilot.current_hp; 
		}
	}
}