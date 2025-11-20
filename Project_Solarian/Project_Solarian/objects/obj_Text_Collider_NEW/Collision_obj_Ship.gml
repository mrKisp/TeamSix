/// @description Insert description here
// You can write your code in this editor

//Thank all the divine that Copy Paste Exists.
if(!instance_exists(obj_Text) && has_been_read == false)
{
	//Creates a Message witha target message.
	instance_create_layer(0,0,"Background_Stuff", obj_Text)
	//New_Message is an Instance by instance we change in the room. 
	//Updates text box with message.
	obj_Text.message_displayed = new_message;

	switch(tutorial_ID)
	{
		case 0:
			global.default_var = true;
		break;
		
		case 1:
			global.tutorial_1 = true;
		break;
		
		case 2:
			global.tutorial_2 = true;
		break;
			
		case 3:
			global.tutorial_3 = true;
		break;

		case 4:
			global.tutorial_4 = true;
		break;

		case 5:
			global.tutorial_ship = true;
		break;

		case 6:
			global.tutorial_space_Station = true;
		break;

		case 7:
			global.tutorial_Asteroid_belt = true;
		break;
		
		case 8:
			global.tutorial_Venus = true;
		break;
		
		case 9:
			global.tutorial_Mars = true;
		break;
		
		case 10:
			global.tutorial_Jupiter = true;
		break;
		
		case 11:
			global.tutorial_Saturn = true;
		break;
		
		case 12:
			global.tutorial_Uranus = true;
		break;

	}
	alarm[1] = 60;
}
