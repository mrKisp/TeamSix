// Inherit the parent event
event_inherited();

if(!isCollected) {
	if(place_meeting(x,y,obj_Player_Pilot)) // If player is touching the oxygen
	{
		showInteract = true;	// Show tooltip
		if(keyboard_check(ord("E"))) // Check if player has pressed collection key
		{
			isCollected = true
			global.items.oxygen++	// Increase oxygen count if more oxygen is collected
			global.codex.add_item(name, 1, sprite);
			showInteract = false // Get rid of tooltip
			if (obj_Player_Pilot.current_hp < obj_Player_Pilot.max_hp)
				if (obj_Player_Pilot.current_hp+heals > obj_Player_Pilot.max_hp)
					obj_Player_Pilot.current_hp = obj_Player_Pilot.max_hp;
				else obj_Player_Pilot.current_hp += heals;
		}
	}
	else
		showInteract = false // Don't show tooltip if player isn't touching the oxygen
}