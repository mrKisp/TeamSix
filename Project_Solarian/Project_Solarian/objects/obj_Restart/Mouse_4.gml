// Inherit the parent event
event_inherited();
//Removes old Progress (I think)
instance_destroy(obj_Game);
//Takes you to main menu, which can then allows you to restart. 
room_goto(rm_Main_menu);