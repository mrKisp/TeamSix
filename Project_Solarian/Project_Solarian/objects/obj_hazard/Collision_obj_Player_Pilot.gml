//When the player collides with the hazard, it reduces HP and then sets the player's x y to the last saved
//checkpoint coordinates based on the last checkpoint the player ran into.
with(obj_Player_Pilot)
{
	audio_play_sound(sfx_player_hurt,1,false);
	obj_Player_Pilot.current_hp -= 10;
	obj_Player_Pilot.x = checkpoint_x;
	obj_Player_Pilot.y = checkpoint_y;
}