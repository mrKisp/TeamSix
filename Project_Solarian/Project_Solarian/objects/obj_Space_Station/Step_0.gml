/// @description Insert description here
// You can write your code in this editor

if(instance_exists(obj_Game))
{
	switch (obj_Game.current_state)
	{
	    case SPACE_STATION_STATE.PHASE_1:
	        // Code to execute if expression equals value1
			if(instance_exists(obj_Ship) && instance_exists(obj_Game))
			{
				//Replace with Goals for Stage 1
				if(global.items.iron>=5 && global.items.hydrogen >= 10)
				{
					//Stage One Ready
					Stage_One = true;
					show_debug_message("Stage One Ready");
				}
				if(place_meeting(x, y, obj_Ship) && Stage_One == true)
				{
					if(keyboard_check_pressed(deposit_key))
					{
						//Remove for Items for Stage One
						//"Goals:\n 5 Iron\n10 Hydrogen"
						global.items.iron = global.items.iron - 5;
						global.items.hydrogen = global.items.hydrogen - 10;
						Stage_One = false;
						Space_Stage = 1;
						//Replace with Image index
						image_index = 0;
						draw_self()
						show_debug_message(global.items.iron);
						show_debug_message(global.items.hydrogen);
						obj_Game.current_state = SPACE_STATION_STATE.PHASE_2;
						show_debug_message("Space Station Now in Stage Two");
					
					}
				}
			}
			break;
	    case SPACE_STATION_STATE.PHASE_2:
	        // Code to execute if expression equals value2
			if(instance_exists(obj_Ship) && instance_exists(obj_Game))
			{
				//Replace Values with the Goals for Stage 2
				if(global.items.hydrogen >= 20 && global.items.helium >= 10 && global.items.sulfur >= 5)
				{
					//Stage two Ready
					Stage_Two = true;
					show_debug_message("Stage Two Ready");
				}
				if(place_meeting(x, y, obj_Ship) && Stage_Two == true)
				{
					if(keyboard_check_pressed(deposit_key))
					{
						//Replace with the Removal of Items needed for Stage 2
						//"Goals:\n10 Iron\n20 Hydrogen\n10 Helium\n5  Sulfur\n"
						//global.items.iron = global.items.iron - 10;
						global.items.hydrogen = global.items.hydrogen - 20;
						global.items.helium = global.items.helium - 10;
						global.items.sulfur = global.items.sulfur - 5;
						Stage_Two = false;
						Space_Stage = 2;
						//Replace with next Image Index
						image_index = 2;
						draw_self();
						obj_Game.current_state = SPACE_STATION_STATE.PHASE_3
						show_debug_message("Space Station Now in Stage Three");
					}
				}
			}
	        break;
	    case SPACE_STATION_STATE.PHASE_3:
	        // Code to execute if expression equals value2
			if(instance_exists(obj_Ship) && instance_exists(obj_Game))
			{
				//Replace with goals for Stage 3
				if(global.items.sulfur >= 10 && global.items.methane >= 3 && global.items.titanium >= 3)
				{
					//Stage Three Ready
					Stage_Three = true;
					show_debug_message("Stage Three Ready");
				}
				if(place_meeting(x, y, obj_Ship) && Stage_Three == true)
				{
					if(keyboard_check_pressed(deposit_key))
					{
						//Replace with items for Stage 3
						//"Goals:\n25 Hydrogen\n15 Helium\n10 Sulfur\n5  Methane\n3  Titanium"
						//global.items.hydrogen = global.items.hydrogen - 25;
						//global.items.helium = global.items.helium - 15;
						global.items.sulfur = global.items.sulfur - 10;
						global.items.methane = global.items.methane - 5;
						global.items.titanium = global.items.titanium - 3;
						Stage_Three = false;
						Space_Stage = 3;
						//Replace with next Image Index
						image_index = 4;
						draw_self();
						alarm[0] = 600;
						show_debug_message("Space Station is Now Finished");
						obj_Ship.immortal = true;
					}
				}
			}
	        break;
	    // ... more cases
	    default:
	        // Code to execute if no case matches (optional)
			//Not sure if *needed* here, but we can add a debug statement if it breaks for whatever reason.
	        break;
	}

	//Just sets the view to max and leaves it there. Could be nice to animate it frame by frame for a win.
	if(room == rm_Win)
	{
		image_index = 4;
		image_speed = 0
	}
}