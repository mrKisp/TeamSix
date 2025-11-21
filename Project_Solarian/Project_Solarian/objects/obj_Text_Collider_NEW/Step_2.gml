/// @description Insert description here
// You can write your code in this editor
if(instance_exists(obj_Game))
{

//Oh Look. It's Back. Still hate it. 	
	switch(tutorial_ID)
	{
		case 0:
			if(global.default_var = true) global.default_var = false;
		break;
		
		case 1:
			if(global.tutorial_1 = true) instance_destroy();
		break;
		
		case 2:
			if(global.tutorial_1a = true) instance_destroy();
		break;
			
		case 3:
			if(global.tutorial_2 = true) instance_destroy();
		break;

		case 4:
			if(global.tutorial_3 = true) instance_destroy();
		break;

		case 5:
			if(global.tutorial_ship = true) instance_destroy();
		break;

		case 6:
			if(global.tutorial_space_Station = true) instance_destroy();
		break;

		case 7:
			if(global.tutorial_Asteroid_belt = true) instance_destroy();
		break;
		
		case 8:
			if(global.tutorial_Venus = true) instance_destroy();
		break;
		
		case 9:
			if(global.tutorial_Mars = true) instance_destroy();
		break;
		
		case 10:
			if(global.tutorial_Jupiter = true) instance_destroy();
		break;
		
		case 11:
			if(global.tutorial_Saturn = true) instance_destroy();
		break;
		
		case 12:
			if(global.tutorial_Uranus = true) instance_destroy();
		break;

	}
}