/// @description Insert description here
// You can write your code in this editor

//For simplicity (at least for now) adding wrapping so that we don't have to worry about escaping the room.
move_wrap(true, true, 0)

//basic forward motion from the Arcade tutorial from class.
if (keyboard_check(acceleration_key))
{
	motion_add(image_angle, move_speed);
}
//Basic rotation from Arcade Class Tutorial
if (keyboard_check(move_key_left))
{
	image_angle += rotation_speed;
}
if (keyboard_check(move_key_right))
{
	image_angle -= rotation_speed;
}
// I like being able to stop. So yes, I am adding a stop key.
if (keyboard_check(stop_key))
{
	motion_set(image_angle, 0)
}