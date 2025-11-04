// Inherit the parent event
event_inherited();

if(!isCollected) {
	if(place_meeting(x,y,obj_Player_Pilot)) // If player is touching the iron
	{
		showInteract = true;	// Show tooltip
		if(keyboard_check(ord("E"))) // Check if player has pressed collection key
		{
			isCollected = true
			obj_Game.iron++	// Increase iron count if more iron is collected
			showInteract = false // Get rid of tooltip
		}
	}
	else
		showInteract = false // Don't show tooltip if player isn't touching the iron
}