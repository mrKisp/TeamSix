/*
	Addded a shortcut so that we can go to the GYM for testing. This should be able to get us to the
*/
if(keyboard_check(ord("G")) && keyboard_check(ord("Y")) && keyboard_check(ord("M")))
{
	room_goto(rm_GYM)
}
//Temp Shortcut to take us to Mars
if(keyboard_check(ord("M")) && keyboard_check(ord("A")) && keyboard_check(ord("R")))
{
	room_goto(rm_Mars)
}