// Inherit the parent event
event_inherited();

if(!isCollected) {
	if(place_meeting(x,y,obj_Player_Pilot)) // If player is touching the methane
	{
		showInteract = true;	// Show tooltip
		if(keyboard_check(ord("E"))) // Check if player has pressed collection key
		{
			isCollected = true
			global.items.methane++	// Increase methane count if more methane is collected
			global.codex.add_item(name, 1, sprite);
			showInteract = false // Get rid of tooltip
		}
	}
	else
		showInteract = false // Don't show tooltip if player isn't touching the methane
}