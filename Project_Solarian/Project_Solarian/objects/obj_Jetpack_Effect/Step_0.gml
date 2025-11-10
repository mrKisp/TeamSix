if(instance_exists(obj_Player_Pilot))
{
	//Sets the jetpack effect to the x,y of the player (plus or minus 5 pixels)
	x = obj_Player_Pilot.x + random_range(-5, 5);
	y = obj_Player_Pilot.y + random_range(-5, 5);
	show_debug_message("Exhaust Created");
	
	//Limits the Particle Creation to counter % 3 frames. 
	var counter = 0
	if(counter % 10 == 0)
	{
		part_particles_create(jetpack_system,x,y,jetpack,1);
	}
	if (counter > 60)
	{
		counter = 0;
	}
	
	//In order to avoid memory leaks, this is supposed to destroy the particle effects 
	//when the player is on the ground. Might need to make this not a local variable though.
	//Not 100% sure though. Could be barking up the wrong tree. 
	if(obj_Player_Pilot.onGround)
	{
		if (part_particles_count(jetpack_system) == 0) 
		{
			part_type_destroy(jetpack);
			part_system_destroy(jetpack_system);
			//debug isn't showing "exhaust destroyed" here. It does show it in obj_pilot so it hopefully
			//Isn't going to cause a memory leak. I don't know why this doesn't trigger though.
			//show_debug_message("Exhaust Destroyed in obj_Jetpack_Exhaust");
			instance_destroy();
		}
	}
}