/*
	Addded a shortcut so that we can go to the GYM for testing. This should be able to get us to the
*/
if(keyboard_check(ord("G")) && keyboard_check(ord("Y")) && keyboard_check(ord("M")))
{
	room_goto(rm_GYM)
}