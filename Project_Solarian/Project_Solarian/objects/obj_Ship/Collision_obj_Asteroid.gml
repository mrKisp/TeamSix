if(immortal == false)
{
	immortal = true;
	current_hp -= other.damage_ship;
	//With 60 frames per second, this should give the player 1 second to avoid damage caused by collision.
	alarm[0] = immortal_window;
}