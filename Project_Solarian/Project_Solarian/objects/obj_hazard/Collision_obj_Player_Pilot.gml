//When the player collides with the hazard, it reduces HP and then sets the player's x y to the last saved
//checkpoint coordinates based on the last checkpoint the player ran into.
with(obj_Player_Pilot)
{
	obj_Player_Pilot.current_hp -= 10;
	obj_Player_Pilot.x = checkpoint_x;
	obj_Player_Pilot.y = checkpoint_y;
}