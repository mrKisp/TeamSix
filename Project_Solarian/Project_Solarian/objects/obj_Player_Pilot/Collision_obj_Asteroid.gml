if(immortal == false)
{
	audio_play_sound(sfx_player_hurt,1,false);
	immortal = true;
	current_hp -= other.damage_player;
	//With 60 frames per second, this should give the player 1 second to avoid damage caused by collision.
	alarm[0] = immortal_window;
}