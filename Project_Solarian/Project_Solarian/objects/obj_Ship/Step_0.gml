/// @description Ship Movement and Angle
// You can write your code in this editor
image_speed = 1;

//For simplicity (at least for now) adding wrapping so that we don't have to worry about escaping the room.
move_wrap(true, true, 0)

//Added this so that the image rotation stays within the one circle. Technically could go really high/low
//But now it should remain in a single circle.
image_angle = clamp(image_angle,0,360);
speed = clamp(speed, 0, max_speed);

//basic forward motion from the Arcade tutorial from class.
if (keyboard_check(acceleration_key) || keyboard_check(alt_move_key_acc))
{
	motion_add(image_angle, move_speed);
	sprite_index = spr_Ship_anim;
}
else sprite_index = spr_Player_Ship;
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
if (keyboard_check_pressed(boost_key))
{
	if(room == rm_Solar_System)
	{
		if(global.items.hydrogen > 0) {
			motion_add(image_angle, boost_speed);
			global.items.hydrogen--;
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

show_debug_message(speed);

if(immortal == true)
{
	image_alpha = .75
}

if(obj_Ship.current_hp <= 0)
{
	room_goto(rm_Game_Over);
}

// Bullet shooting logic
if (mouse_check_button_pressed(shoot_button))
{
	instance_create_layer(x, y, "Instances", obj_bullet);	
}

