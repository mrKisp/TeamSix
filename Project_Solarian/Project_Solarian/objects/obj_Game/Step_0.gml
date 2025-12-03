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

//Temp Shortcut to take us to Solar System
if(keyboard_check(ord("J")) && keyboard_check(ord("U")) && keyboard_check(ord("P")))
{
	room_goto(rm_Jupiter);
}

//Temp Shortcut to take us to Win Screen
if(keyboard_check(ord("W")) && keyboard_check(ord("I")) && keyboard_check(ord("N")))
{
	current_state = SPACE_STATION_STATE.PHASE_FIN;
	room_goto(rm_Win);
}

//Adding Easy Escape so that I can quit a playtest faster.
if(keyboard_check_pressed(vk_escape))
{
	game_end();
}

//Game Over
if(instance_exists(obj_Player_Pilot))
{
	if(obj_Player_Pilot.current_hp <= 0)
	{
		ship_x = 1600;
		ship_y = 1408;
		// reset item count so inventory UI is updated
		global.items = init_items();
		room_goto(rm_Game_Over)
		audio_play_sound(sfx_lose,1,false);
	}
}
if(instance_exists(obj_Ship))
{
	if(room == rm_Main_menu)
	{
		obj_Ship.x = 1120;
		obj_Ship.y = 256;
	}
	
	if(obj_Ship.current_hp <= 0)
	{
		ship_x = 1600;
		ship_y = 1408;
		room_goto(rm_Game_Over);
	}
}



//Starting to look at a Collections/Journal menu by pressing Tab.
//As of right now, it just runs a debug message in the terminal. But the logic *should* work
//once I get the full logic implemented.
if(keyboard_check_pressed(vk_tab))
{
	global.game_paused = !global.game_paused;
	open_inventory();
}


/*
if (keyboard_check_pressed(vk_tab))
{
	if (!global.game_paused) {
		global.game_paused = true;
		with (obj_InventoryParent) {	
			visible = true;
		}
	} else {
		global.game_paused = false;
		with (obj_InventoryParent) {	
			visible = false;
		}
	}
}
*/

//turns off the Press Tab on the Main Menu and if you are looking at codex or have won the game. 
if(room == rm_Main_menu || global.game_paused == true || room == rm_Win)
{
	layer_set_visible("UI_PressTab", false);
	layer_set_visible("UI_Goal", false);
}
else
{
	layer_set_visible("UI_PressTab", true);
	layer_set_visible("UI_Goal", true);	
}

if(instance_exists(obj_Player_Pilot) && warning_active = false)
{
	if(obj_Player_Pilot.current_hp < 33)
	{
		instance_create_layer(0,0,"Background_Stuff", obj_Text)
		obj_Text.message_displayed = "Gather Oxygen to Heal!";
		warning_active = true;
	}
	else
	{
		//This should never be used. Hopefully.
	}
	alarm[0] = 600;
}

if(instance_exists(obj_Ship) && ship_warning_active = false)
{
	if(obj_Ship.current_hp < 33)
	{
		instance_create_layer(0,0,"Background_Stuff", obj_Text)
		obj_Text.message_displayed = "Destroy Asteroids to Heal!";
		ship_warning_active = true;
	}
	else
	{
		//This should never be used. Hopefully.
	}
	alarm[0] = 600;
}
