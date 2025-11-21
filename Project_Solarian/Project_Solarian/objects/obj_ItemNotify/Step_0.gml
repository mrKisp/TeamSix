// loop through struct
// if count != 0
// get the name
// find sprite name
// put that 

var kv = variable_struct_get_names(global.items); // struct is a key value pair

for (var i = 0; i < array_length(kv); i++)
{
	var name = kv[i]; // key
	var count = global.items[$ name]; // this gibberish syntax is getting the values
	var picked_up = global.has_picked_up[$ name];
	//show_debug_message($"item name {name} and count is {count} and has picked up is {picked_up}");
	if (count != 0 && !picked_up) // if count is 0 and hasnt been picked up (false -> true)
	{
		global.has_picked_up[$ name] = true;
		layer_set_visible(new_item_id, true);
		var spr = asset_get_index("spr_" + string(name));
		layer_sprite_change(back_id, spr); // ignore this warning it works, gamemaker is being a dumbass
		alarm[0] = 180; // 3 seconds ish
	}
}

//updates the UI layer with the goals each step. Active tracking of inventory. 
if(instance_exists(obj_Game))
{
	if(obj_Game.current_state == SPACE_STATION_STATE.PHASE_1)
	{
		layer_text_text(mission_one_id, $"Iron {global.items.iron}/5");
		layer_text_text(mission_two_id, $"Hydrogen {global.items.hydrogen}/10");
		layer_text_text(mission_three_id, $" ");
	}
	if(obj_Game.current_state == SPACE_STATION_STATE.PHASE_2)
	{
		layer_text_text(mission_one_id, $"Hydrogen {global.items.hydrogen}/20");
		layer_text_text(mission_two_id, $"Helium {global.items.helium}/10");
		layer_text_text(mission_three_id, $"Sulfur {global.items.sulfur}/5");
	}
	if(obj_Game.current_state == SPACE_STATION_STATE.PHASE_3)
	{
		layer_text_text(mission_one_id, $"Sulfur {global.items.sulfur}/10");
		layer_text_text(mission_two_id, $"Methane {global.items.methane}/5");
		layer_text_text(mission_three_id, $"Titanium {global.items.titanium}/3");
	}
}