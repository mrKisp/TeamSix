if(immortal == false && other.sprite_index == spr_asteroid) // Check that the asteroid is not already blown up and that you aren't immortal
{
	audio_play_sound(sfx_ship_hurt,1,false);
	immortal = true;
	current_hp -= other.damage_ship;
	//With 60 frames per second, this should give the player 1 second to avoid damage caused by collision.
	alarm[0] = immortal_window;
}
