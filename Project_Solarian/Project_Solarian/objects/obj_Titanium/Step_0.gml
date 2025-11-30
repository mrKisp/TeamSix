// Inherit the parent event
event_inherited();

if(!isCollected) {
	if(place_meeting(x,y,obj_Player_Pilot)) // If player is touching the titanium
	{
		showInteract = true;	// Show tooltip
		if(keyboard_check(ord("E"))) // Check if player has pressed collection key
		{
			isCollected = true
			global.items.titanium++	// Increase helium count if more titanium is collected
			global.codex.add_item(name, 1, sprite);
			showInteract = false // Get rid of tooltip
			audio_play_sound(collect_sfx,100,false);
		}
	}
	else
		showInteract = false // Don't show tooltip if player isn't touching the titanium
}