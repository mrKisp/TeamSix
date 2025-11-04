/*
	Addded a set of shortcuts so that we can go to the GYM for testing.
	This should be able to get us to the GYM, Solar System, and Mars. 
	
	TODO: Remove once we have better triggers to allow us to move between areas. 
*/
if(keyboard_check(ord("G")) && keyboard_check(ord("Y")) && keyboard_check(ord("M")))
{
	room_goto(rm_GYM);
}
//Temp Shortcut to take us to Solar System
if(keyboard_check(ord("S")) && keyboard_check(ord("O")) && keyboard_check(ord("L")))
{
	room_goto(rm_Solar_System);
}
//Temp Shortcut to take us to Mars
if(keyboard_check(ord("M")) && keyboard_check(ord("A")) && keyboard_check(ord("R")))
{
	room_goto(rm_Mars);
}

//Adding Easy Escape so that I can quit a playtest faster.
if(keyboard_check_pressed(vk_backspace))
{
	game_end();
}

//Starting to look at a Collections/Journal menu by pressing Tab.
//As of right now, it just runs a debug message in the terminal. But the logic *should* work
//once I get the full logic implemented.
if(keyboard_check_pressed(vk_tab))
{
	if(game_paused = false)
	{
		game_paused = true;
		show_debug_message("Quest Journal Opened");
		show_debug_message("Game is Paused")
		//instance_create_layer(1,1, "Instances", obj_Sun);
		
		exit;
	}
	if(game_paused = true)
	{
		game_paused = false;
		show_debug_message("Quest Journal Closed");
		show_debug_message("Game is Unpaused");
		//instance_destroy(obj_Sun);
		exit;
	}
}