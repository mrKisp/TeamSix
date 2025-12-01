// Inherit the parent event
event_inherited();
if(room = rm_Win)
{
	//Removes old Progress (I think)
	//Can confirm now that it is now resetting things correctly.
	obj_Game.picked_up_first_time = function()
	{
		return {
			datapad : false,
			iron : false,
			hydrogen : false,
			helium : false,
			methane : false,
			sulfur : false,
			oxygen : false,
			titanium : false
		}
	}
	// Only full restart if player has won
	instance_destroy(obj_Game);
}
else 
{
	global.items.datapad = 0;
	global.items.helium = 0;
	global.items.hydrogen = 0;
	global.items.iron = 0;
	global.items.methane = 0;
	global.items.oxygen = 0;
	global.items.sulfur = 0;
	global.items.titanium = 0;
}
	
//Takes you to main menu, which can then allows you to restart. 
room_goto(rm_Main_menu);