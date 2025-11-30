/// @description Ship Movement and Angle
// You can write your code in this editor
image_speed = 1;

//For simplicity (at least for now) adding wrapping so that we don't have to worry about escaping the room.
move_wrap(true, true, 0)

//Added this so that the image rotation stays within the one circle. Technically could go really high/low
//But now it should remain in a single circle.
image_angle = clamp(image_angle,0,360);

// adjust the value if needed, i made it default to 30
// in gamemaker 'Step' is ran after the instance is created, and
// this will change depending on our game speed
// we set is to 60 frames per second, so that means every second
// 'Step' is ran 60 times 
// Meaning if you want the boost duration longer simply increase the max_boost_duration number
if (boost_used_ms >= max_boost_duration) {
	boost_used_bool = false;
	boost_used_ms = 0;
}

if (!boost_used_bool) {
	speed = clamp(speed, 0, max_speed);
} else {
	boost_used_ms++;
}

//basic forward motion from the Arcade tutorial from class.
if (keyboard_check(acceleration_key) || keyboard_check(alt_move_key_acc))
{
	if(!audio_is_playing(sfx_ship_acc))
		audio_play_sound(sfx_ship_acc,100,true);
	motion_add(image_angle, move_speed);
	sprite_index = spr_Ship_anim;
}
else {
	audio_stop_sound(sfx_ship_acc);
	sprite_index = spr_Player_Ship;
}
//Basic rotation from Arcade Class Tutorial
if (keyboard_check(move_key_left) || keyboard_check(alt_move_key_left))
{
	image_angle += rotation_speed;
	if(image_angle > 360)
	{
		image_angle = 0
	}
}
if (keyboard_check(move_key_right) || keyboard_check(alt_move_key_right))
{
	image_angle -= rotation_speed;
	if(image_angle < 0)
	{
		image_angle = 360
	}
}

if (keyboard_check(move_key_down) || keyboard_check(alt_move_key_slow))
{
	if (speed > 0)
	{
		speed -= move_speed;
	}
}
// I like being able to stop. So yes, I am adding a stop key.
//TODO: Make the stop less... instant. A slower stop than just an instant hit the breaks and stop on a dime.
if (keyboard_check(stop_key))
{
	// Currently space to full stop
	motion_set(image_angle, 0)
}

// boost not done
if (keyboard_check_pressed(boost_key) && !(boost_used_bool))
{
	if(room == rm_Solar_System)
	{
		if(global.items.hydrogen > 0) {
			motion_add(image_angle, boost_speed);
			global.items.hydrogen--;
			boost_used_bool = true;
		}
	}
}

//Adding this so the ship isn't upside down.
//It should flip the image as we look screen left.
if (image_angle > 90 && image_angle < 270)
{
	image_yscale = abs(image_yscale)*-1;
}
if (image_angle < 90 || image_angle > 271)
{
	image_yscale = abs(image_yscale);
}

//show_debug_message("Current speed: " + string(speed));

if(immortal == true && obj_Game.current_state != SPACE_STATION_STATE.PHASE_3)
{
	image_alpha = .75
}

if(obj_Ship.current_hp <= 0)
{
	room_goto(rm_Game_Over);
}

// Bullet shooting logic
if (mouse_check_button_pressed(shoot_button) && room_get_name(room) == "rm_Solar_System")
{
	instance_create_layer(x, y, "Instances", obj_bullet);
	audio_play_sound(laser_sfx,100,false);
	alarm[1] = 60;
}

