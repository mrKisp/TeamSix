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
	if(!instance_exists(obj_button_play))
	{
		if (instance_exists(obj_Player_Pilot))
		{
			draw_set_font(fnt_count);
			draw_set_halign(fa_left);
			draw_set_valign(fa_top);
			draw_set_colour(c_white);
			draw_healthbar(20, 50, 150, 70, obj_Player_Pilot.current_fuel,c_black,c_yellow,c_green,0,true,true)
			draw_text(30,50, "Fuel");
			draw_healthbar(20, 70, 150, 90, obj_Player_Pilot.current_hp,c_black,c_grey,c_red,0,true,true)
			draw_text(40,70,"HP");
		}
	
		if (instance_exists(obj_Ship))
		{
			draw_set_font(fnt_count);
			draw_set_halign(fa_left);
			draw_set_valign(fa_top);
			draw_set_colour(c_white);			
			
		//	draw_healthbar(20, 50, 150, 70, obj_Ship.current_fuel,c_black,c_yellow,c_green,0,true,true)
			draw_healthbar(20, 70, 150, 90, obj_Ship.current_hp,c_black,c_grey,c_red,0,true,true)
			draw_text(30,70,"HP");
		}
	}
}

if(room != rm_Main_menu) {
	// Draw a simple deposit message
	if(global.items.iron >= 5 && global.items.hydrogen >= 10 && current_state == SPACE_STATION_STATE.PHASE_1)
	{
//		draw_set_font(fnt_logo);
	
//		draw_set_color(c_green);
//		draw_set_valign(fa_middle);
//		draw_set_halign(fa_left);
//		draw_text(300, 300, "GOOD JOB VOYAGER!\nDeposit at Space Station\nNear Earth!");
//		draw_set_valign(fa_top);
//		draw_set_halign(fa_left);
//		draw_set_colour(c_white);
//		draw_set_font(fnt_gui);
		instance_create_layer(300,300,"Background_Stuff", obj_deposit_msg)
	}
	// Draw a simple deposit message
	else if(current_state == SPACE_STATION_STATE.PHASE_2 && global.items.hydrogen >= 20 && global.items.helium >= 10 && global.items.sulfur >= 5)
	{
		draw_set_font(fnt_logo);
	
		draw_set_color(c_green);
		draw_set_valign(fa_middle);
		draw_set_halign(fa_left);
		draw_text(300, 300, "GOOD JOB VOYAGER!\nDeposit at Space Station\nNear Earth!");
		draw_set_valign(fa_top);
		draw_set_halign(fa_left);
		draw_set_colour(c_white);
		draw_set_font(fnt_gui);
	}
	// Draw a simple deposit message
	else if(current_state == SPACE_STATION_STATE.PHASE_3 && global.items.sulfur >= 10 && global.items.methane >= 5 && global.items.titanium >= 3)
	{
		draw_set_font(fnt_logo);
	
		draw_set_color(c_green);
		draw_set_valign(fa_middle);
		draw_set_halign(fa_left);
		draw_text(300, 300, "GOOD JOB VOYAGER!\nDeposit at Space Station\nNear Earth!");
		draw_set_valign(fa_top);
		draw_set_halign(fa_left);
		draw_set_colour(c_white);
		draw_set_font(fnt_gui);
	}
	else if(instance_exists(obj_deposit_msg)) instance_destroy(obj_deposit_msg);
}

if(player_Won == true)
{
	draw_set_font(fnt_logo);
	
	draw_set_color(c_green);
	draw_set_valign(fa_middle);
	draw_set_halign(fa_left);
	draw_text(300, 300, "GOOD JOB VOYAGER!\nSpace Station Complete!");
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	draw_set_colour(c_white);
	draw_set_font(fnt_gui);
}
