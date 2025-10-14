//MACROS
/*
	Gameplay Variables that may or may not come up. 
	
	When I was working on my micro projects, I needed to look at the "framerate"
	as well as a functino for delta time. As soon as I look up the function for delta time, I will add it
	here.
*/
#macro FRAMERATE 60

/*
	Did some minor math here. If we set 16 pixels to be equal to 2 meters tall the following is "gravity" 
	if we assume 60 frames per step, which *should* be able to be hit with how simple the game should be.
*/
#macro GRAV  78.4


//Gravity Percentages For Platforming
/*
	I could be wrong. Please double check this math. 
	
	These are the percentages of earth's gravity. So if we took GRAV and multiplied it by this percentage, it
	should be the gravity of the local place. 
*/
#macro MERCURY_GRAV		37.8
#macro VENUS_GRAV		90.5
#macro EARTH_MOON_GRAV	16.5
#macro MARS_GRAV		37.9
#macro JUPITER_GRAV		254
#macro SATURN_GRAV		106.5
#macro NEPTUNE_GRAV		113.3
#macro IO_GRAV			18.3
#macro EUROPA			13.4
#macro TITAN			13.8