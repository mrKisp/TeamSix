/// @description Draw scoreboard
// Display resources collected (testing working with iron, then moving on)
// Set the text color and font

if (global.game_paused = false)
{
	draw_set_font(fnt_gui);

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
		draw_healthbar(20, 50, 100, 70, obj_Player_Pilot.current_fuel,c_black,c_yellow,c_green,0,true,true)
		draw_healthbar(20, 70, 100, 90, obj_Player_Pilot.current_hp,c_black,c_grey,c_red,0,true,true)
	}
	
	if (instance_exists(obj_Ship))
	{
		draw_healthbar(20, 50, 100, 70, obj_Ship.current_fuel,c_black,c_yellow,c_green,0,true,true)
		draw_healthbar(20, 70, 100, 90, obj_Ship.current_hp,c_black,c_grey,c_red,0,true,true)
	}

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

