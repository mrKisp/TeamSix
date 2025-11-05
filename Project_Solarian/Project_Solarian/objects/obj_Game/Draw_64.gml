/// @description Draw scoreboard
// Display resources collected (testing working with iron, then moving on)
// Set the text color and font

if (global.game_paused = false)
{
	draw_set_font(fnt_gui);
	
	draw_set_color(c_white);
	draw_text(16, 16, "CONTROLS");
	draw_text(16, 32, "Arrow Key to Move");
	draw_text(16, 48, "E to Pick Up Item");
	draw_text(16, 64, "Tab to Open Tablet"); // lol think of better names later

	// TODO: move item count, mission in tablet
	// Draw the score text in the top-left corner
	//draw_set_color(c_green);
	//draw_text(16, 16, "INVENTORY");

	//draw_set_color(c_silver);
	//draw_text(16, 32, "Iron: " + string(global.items.iron));

	//draw_set_color(c_white);
	//draw_text(16, 48, "Hydrogen: " + string(global.items.hydrogen));

	//fuel bar
	if (instance_exists(obj_Player_Pilot))
	{
		draw_healthbar(20, 100, 100, 120, obj_Player_Pilot.current_fuel,c_black,c_yellow,c_green,0,true,true)
	}

	//Objectives
	draw_set_color(c_green);
	draw_text(room_width-150, 16, "GOALS");

	draw_set_color(c_silver);
	draw_text(room_width-150, 32, "Iron: 2");

	draw_set_color(c_white);
	draw_text(room_width-150, 48, "Hydrogen: 5");
}

// Draw a simple win message
if (global.items.iron >= 2 && global.items.hydrogen >= 5)
{
	draw_set_font(fnt_logo);
	
	draw_set_color(c_green);
	draw_set_valign(fa_middle);
	draw_set_halign(fa_center);
	draw_text(300, 300, "ALL GOALS COMPLETE! GOOD JOB VOYAGER!");
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	draw_set_colour(c_white);
	draw_set_font(fnt_gui);
}

