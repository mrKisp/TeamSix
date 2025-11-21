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