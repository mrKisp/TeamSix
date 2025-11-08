//Game Mechanics
global.game_paused = false;
randomize();

//Player Resources
/*
	I figure that we will create a series of resources that the player collects across both the
	"on ground" and "in space" sections. So to solve the problem of figuring out who has what,
	I figure that we can use the obj_Game to manage all the resources. 
*/

global.codex = new Inventory();

// this is a struct, kind of similar to map
// access them by items.name
// example: items.datapad -> return the number associated with datapad
global.items = 
{
	datapad : 0,
	iron : 0,
	hydrogen : 0,
	methane : 0,
	sulfer : 0,
	water : 0,
	titanium : 0.
}

// update this value accordingly as you add more items
global.items_size = 7

global.codex_needs_update = false;

//Upgrades
/*
	This could be handled with the ship or player pilot object, but I think it's possible that we can use 
	it here	in the event that we want a space that the player offloads in order to upgrade the ship. 
	For example, if there is a hangar on earth. 
	
	Can also cover other upgrades. Like a piercing ammo upgrade, warp upgrades, or whatever. 
*/
global.max_fuel_upgrade = false;
global.max_ammo_upgrade = false;
global.min_fuel_drain = false;

global.max_hp = false;
global.max_oxygen = false;

//To disable UI before we need it.
layer_set_visible("UI Folder", false);
