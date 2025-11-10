onGround = place_meeting(x, y+2, platform);
var jump = keyboard_check_pressed(move_key_jump);

// keyboard_check() returns 1 to whatever key pressed and 0 for no press
// so if right key pressed: 1 - 0 = 1 (go right)
// left key pressed: 0 - 1 = -1 (go left)
// and both key pressed: 1 - 1 = 0 (no movement)
move_x = keyboard_check(move_key_right) - keyboard_check(move_key_left);

// move_speed is a constant in obj_Player_Pilot under "Create"
move_x *= move_speed;

// function to check if this object collides with the platform
// (replace obj_test_platform with whatever platform you want to check)
// maybe it's good idea to make the platform name a variable that can be easily
// configured in the editor
if (onGround)
{
	// Sprite logic TODO: if (move_x != 0)
	move_y = 0;
	if (current_fuel < max_fuel)
	{
		//Temporary Regenerating Fuel for Testing
		current_fuel += 1;
		current_fuel = clamp(current_fuel,0,100);
	}
	// moves player object up (negative means up)
	if (jump)
	{
			move_y = -jump_height;	
	}
}
// code to keep player cap at this max_fall_speed so it won't accelerate further
else if (move_y < max_fall_speed)
{
	move_y += grav; // Apply gravity
	
	// If player is in the air and using the jump for a jetpack, apply it
	if (keyboard_check(move_key_jump) && current_fuel > 0)
	{
		//TODO: Minus Fuel, Then Update obj_Game with UI screen of Fuel Remaining.
		//This should be a basic fuel drain mechanic. But I will be honest I don't know if 
		//It really will work well or not.
		current_fuel -= fuel_drain;
		move_y -= jet_pack_strength;
		//A quick flag to only spawn one object instead of 60 per frame.
		fx_on = true;
		if(fx_on)
		{
			instance_create_layer(x, y, "FX_Layer", obj_Jetpack_Effect)
			fx_on = false;
		}
	}
	else
	{
		//It is showing the debug message that the object is being destroyed, so it is *probably*
		//Good and wont' cause a memory leak?
		//show_debug_message("Exhaust Destroyed in obj_Pilot");
		if(instance_exists(obj_Jetpack_Effect))
		{
			instance_destroy(obj_Jetpack_Effect);	
		}
	}
}

if (place_meeting(x + move_x, y, platform))
{
	move_x = 0;
}

if (place_meeting(x, y + move_y, platform))
{
	move_y = 0;
}

// this function is the code to apply movement
move_and_collide(move_x, move_y, platform);