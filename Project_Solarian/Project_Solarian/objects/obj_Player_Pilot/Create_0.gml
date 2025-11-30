//Player Stats
max_hp = 100;
current_hp = max_hp;
max_ammo = 100;
current_ammo = max_ammo;
max_oxygen = 100;
current_oxygen = max_oxygen;
max_fuel = 100;
current_fuel = max_fuel;
immortal = false;

// Variables used to apply movement to player object
move_x = 0;
move_y = 0;
onGround = 0;
right_input = false;
left_input = false;
jump_input = false;
jump = 0;
jpack = 0;


//Checkpoint Variables
checkpoint_x = 0;
checkpoint_y = 0;

//FX Variables
fx_on = false;

// Animation logic
image_speed = 0;
walk_speed = 3.5;

// Dash Variables
canDash = false;
dashDistance = 5000;
dashTime = 30;
dashEnergy = 0;


// Changed player to run in "states", with one
// "free" state that is the default state and one "dash"
// state for when you do a dash
StateFree = function()
{
	// keyboard_check() returns 1 to whatever key pressed and 0 for no press
	// so if right key pressed: 1 - 0 = 1 (go right)
	// left key pressed: 0 - 1 = -1 (go left)
	// and both key pressed: 1 - 1 = 0 (no movement)
	move_x = right_input - left_input;

	// Reset the values for the next step so player doesn't lock up
	right_input = 0;
	left_input = 0;
	// move_speed is a constant in obj_Player_Pilot under "Create"
	move_x *= move_speed;
	onGround = place_meeting(x, y+5, platform);
	image_speed = 1;
	// function to check if this object collides with the platform
	// (replace obj_test_platform with whatever platform you want to check)
	// maybe it's good idea to make the platform name a variable that can be easily
	// configured in the editor
	if (onGround)
	{
		if(instance_exists(obj_Hydrogen))
			if(global.items.hydrogen>0)
				canDash = true;
		// Sprite animation logic
		if (move_x != 0)
		{
			if (move_x > 0)
				sprite_index = spr_player_anim_sheet_R; 
			if (move_x < 0)
				sprite_index = spr_player_anim_sheet_L; 
		}
		else sprite_index = spr_player;
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
		if (jpack && current_fuel > 0)
		{
			//TODO: Minus Fuel, Then Update obj_Game with UI screen of Fuel Remaining.
			//This should be a basic fuel drain mechanic. But I will be honest I don't know if 
			//It really will work well or not.
			current_fuel -= fuel_drain;
			move_y -= jet_pack_strength;
			// Jetpack audio logic
			if(!audio_is_playing(sfx_jpack))
				audio_play_sound(sfx_jpack,100,true);
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
			// Logic to shut off jetpack sound when not jetpacking
			audio_stop_sound(sfx_jpack);
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

	if(immortal == true)
	{
		image_alpha = .75;
	}
	
	// Dash input
	if (canDash) && keyboard_check(dash_button)
	{
		global.items.hydrogen--;
		canDash = false;
		dashDirection = point_direction(0,0,right_input-left_input,x);
		dashSp = dashDistance/dashTime;
		dashEnergy = dashDistance
		state = StateDash;
	}

}

// Dash State
StateDash = function()
{
	// Move during dash
	hsp = lengthdir_x(dashSp, dashDirection);
	vsp = lengthdir_y(dashSp, dashDirection);
	with (instance_create_depth(x,y,depth+1,obj_trail))
	{
		sprite_index = other.sprite_index;
		image_blend = c_fuchsia;
		image_alpha = 0.7;
	}
	
	// Collision stuff
	onGround = place_meeting(x, y+5, platform);
	image_speed = 1;

	// function to check if this object collides with the platform
	// (replace obj_test_platform with whatever platform you want to check)
	// maybe it's good idea to make the platform name a variable that can be easily
	// configured in the editor
	if (onGround)
	{
		// Sprite animation logic
		if (move_x != 0)
		{

			if (move_x > 0)
				sprite_index = spr_player_anim_sheet_R; 
			if (move_x < 0)
				sprite_index = spr_player_anim_sheet_L; 
		}
		else sprite_index = spr_player;
		// moves player object up (negative means up)
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

	if(immortal == true)
	{
		image_alpha = .75;
	}
	
	// End Dash
	dashEnergy -= dashSp;
	if (dashEnergy <= 0)
	{
		vsp = 0;
		hsp = 0;
		state = StateFree;
	}
}

state = StateFree;