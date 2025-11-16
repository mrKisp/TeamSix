/// @description Insert description here
// You can write your code in this editor

switch (Space_Stage)
{
    case 0:
        // Code to execute if expression equals value1
		if(instance_exists(obj_Ship) && instance_exists(obj_Game))
		{
			//Replace with Goals for Stage 1
			if(global.items.iron>=2 && global.items.hydrogen >= 5)
			{
				//Stage One Ready
				Stage_One = true;
			}
			if(place_meeting(x, y, obj_Ship) && Stage_One == true)
			{
				if(keyboard_check_pressed(deposit_key))
				{
					//Remove for Items for Stage One
					global.items.iron = global.items.iron - 2;
					global.items.hydrogen = global.items.hydrogen - 5;
					Stage_One = false;
					Space_Stage = 1;
					//Replace with Image index
					image_blend = c_red;
					show_debug_message(global.items.iron);
					show_debug_message(global.items.hydrogen);
					
				}
			}
		}
		break;
    case 1:
        // Code to execute if expression equals value2
		if(instance_exists(obj_Ship) && instance_exists(obj_Game))
		{
			//Replace Values with the Goals for Stage 2
			if(global.items.iron>=2 && global.items.hydrogen >= 5)
			{
				//Stage One Ready
				Stage_Two = true;
			}
			if(place_meeting(x, y, obj_Ship) && Stage_Two == true)
			{
				if(keyboard_check_pressed(deposit_key))
				{
					//Replace with the Removal of Items needed for Stage 2
					global.items.iron = global.items.iron - 2;
					global.items.hydrogen = global.items.hydrogen - 5;
					Stage_Two = false;
					Space_Stage = 2;
					//Replace with next Image Index
					image_blend = c_blue;
				}
			}
		}
        break;
    case 2:
        // Code to execute if expression equals value2
		if(instance_exists(obj_Ship) && instance_exists(obj_Game))
		{
			//Replace with goals for Stage 3
			if(global.items.iron>=2 && global.items.hydrogen >= 5)
			{
				//Stage One Ready
				Stage_Three = true;
			}
			if(place_meeting(x, y, obj_Ship) && Stage_Three == true)
			{
				if(keyboard_check_pressed(deposit_key))
				{
					//Replace with items for Stage 3
					global.items.iron = global.items.iron - 2;
					global.items.hydrogen = global.items.hydrogen - 5;
					Stage_Three = false;
					Space_Stage = 3;
					//Replace with next Image Index
					image_blend = c_yellow;
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