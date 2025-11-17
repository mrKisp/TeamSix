//MACROS
/*
	Gameplay Variables that may or may not come up. 
	
	When I was working on my micro projects, I needed to look at the "framerate"
	as well as a functino for delta time. As soon as I look up the function for delta time, I will add it
	here.
*/
#macro FRAMERATE 60
//Part of a Tutorial. Might not be needed. 
#macro RESOLUTION_W 1366
#macro RESOLUTION_H 768

/*
	
*/
#macro GRAV  78.4


//Gravity Percentages For Platforming
/*
	I could be wrong. Please double check this math. 
	
	These are the percentages of earth's gravity. So if we took GRAV and multiplied it by this percentage, it
	should be the gravity of the local place. 
*/
#macro MERCURY_GRAV		37.8/100
#macro VENUS_GRAV		90.5/100
#macro EARTH_MOON_GRAV	16.5/100
#macro MARS_GRAV		37.9/100 //Have
#macro JUPITER_GRAV		254/100  //have
#macro SATURN_GRAV		106.5/100
#macro NEPTUNE_GRAV		113.3/100
#macro IO_GRAV			18.3/100
#macro EUROPA			13.4/100
#macro TITAN			13.8/100