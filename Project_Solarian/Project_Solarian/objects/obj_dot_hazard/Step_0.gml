//First, checks to see if a player exists.
//This does not take into account if the player is standing
//in two danger zones at the same time. It will apply once
//Per instance that they are standing in. Potentially rare, but also
//valuble in certain senarios.
if(instance_exists(obj_Player_Pilot))
{
	//If player stands in the danger zone
	if(place_meeting(x,y,obj_Player_Pilot))
	{
		counter += 1;
	}
	//Resets the counter back to zero if the player is not standing
	//in the danger zone
	else
	{
		counter = 0;
	}
	
	//if Counter exceeds framerate, deal damage, and reset counter. 
	//With framerate at a stable 60 fps, should deal damage once per
	//Second. 
	if(counter >= FRAMERATE)
	{
		counter = 0;
		obj_Player_Pilot.current_hp -= d_o_t;
	}
}
if(instance_exists(obj_Ship))
{
	//If player stands in the danger zone
	if(place_meeting(x,y,obj_Ship))
	{
		counter += 1;
		obj_Ship.image_blend = c_red;
	}
	//Resets the counter back to zero if the player is not standing
	//in the danger zone
	else
	{
		counter = 0;
		obj_Ship.image_blend = c_white;
	}
	
	//if Counter exceeds framerate, deal damage, and reset counter. 
	//With framerate at a stable 60 fps, should deal damage once per
	//Second. 
	if(counter >= FRAMERATE)
	{
		counter = 0;
		obj_Ship.current_hp -= d_o_t;
	}
}