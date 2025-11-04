//Game Mechanics
game_paused = false;

//Player Resources
/*
	I figure that we will create a series of resources that the player collects across both the
	"on ground" and "in space" sections. So to solve the problem of figuring out who has what,
	I figure that we can use the obj_Game to manage all the resources. 
*/
iron = 0;
hydrogen = 0;
methane = 0;
sulfer = 0;
water = 0;
titanium = 0;

//Upgrades
/*
	This could be handled with the ship or player pilot object, but I think it's possible that we can use 
	it here	in the event that we want a space that the player offloads in order to upgrade the ship. 
	For example, if there is a hangar on earth. 
	
	Can also cover other upgrades. Like a piercing ammo upgrade, warp upgrades, or whatever. 
*/
max_fuel_upgrade = false;
max_ammo_upgrade = false;
min_fuel_drain = false;

max_hp = false;
max_oxygen = false;

//To disable UI before we need it.
layer_set_visible("UI Folder", false);