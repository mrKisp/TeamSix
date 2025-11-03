if(place_meeting(x,y,obj_Player_Pilot)) // If player is touching the iron
{
	show_astronaut_interact = true;	
}
else show_astronaut_interact = false;

if(place_meeting(x,y,obj_Ship)) // If player is touching the iron
{
	show_ship_interact = true;	
}
else show_ship_interact = false;