// Inherit the parent event
event_inherited();
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
instance_destroy(obj_Game);
//Takes you to main menu, which can then allows you to restart. 
room_goto(rm_Main_menu);