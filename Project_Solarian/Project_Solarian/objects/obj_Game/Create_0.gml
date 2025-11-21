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

init_items = function()
{
	return {
		datapad : 0,
		iron : 0,
		hydrogen : 0,
		helium : 0,
		methane : 0,
		sulfur : 0,
		oxygen : 0,
		titanium : 0
	}
};

picked_up_first_time = function()
{
	return {
		datapad : false,
		iron : false,
		hydrogen : false,
		helium : false,
		methane : false,
		sulfur : false,
		oxygen : false,
		titanium : false
	}
}

// this is a struct, kind of similar to map
// access them by items.name
// example: items.datapad -> return the number associated with datapad
global.items = init_items();

global.has_picked_up = picked_up_first_time();

// update this value accordingly as you add more items
global.items_size = 8

global.codex_needs_update = false;

//Text
global.text_Speed = 0.75;

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

//Holding Spot to save some variables
player_hp = 100;
ship_hp = 100;

// default x and y when user finishes gym
ship_x = 1664;
ship_y = 1536;

 // In the Create Event
    enum SPACE_STATION_STATE {
        PHASE_1,
        PHASE_2,
        PHASE_3
    }
current_state = SPACE_STATION_STATE.PHASE_1;

inventory_layer_name = "UI_Inventory";
item_notify_layer_name = "UI_ItemNotify";
press_tab_layer_name = "UI_PressTab";

open_inventory = function()
{
	if (global.game_paused)
	{
		instance_deactivate_all(true);
		layer_set_visible(inventory_layer_name, true);
		layer_set_visible(item_notify_layer_name, false);
		layer_set_visible(press_tab_layer_name, false);
	}
	else
	{
		instance_activate_all();
		layer_set_visible(inventory_layer_name, false);
		layer_set_visible(press_tab_layer_name, true);
	}
}

//Global Tutorial Text Variables
global.default_var = false;
global.tutorial_1 = false;
global.tutorial_2 = false;
global.tutorial_3 = false;
global.tutorial_ship = false;
global.tutorial_space_Station = false;
global.tutorial_Asteroid_belt = false;
global.tutorial_Venus = false;
global.tutorial_Mars = false;
global.tutorial_Jupiter = false;
global.tutorial_Saturn = false;
global.tutorial_Uranus = false;