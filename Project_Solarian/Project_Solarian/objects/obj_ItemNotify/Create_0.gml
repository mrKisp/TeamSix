//tab_id = layer_get_id("UI_PressTab");
new_item_id = layer_get_id("UI_ItemNotify");
back_id = layer_sprite_get_id(new_item_id, "placeholder");

//Grabs the UI Element holding the goal text. 
mission_one_id = layer_text_get_id("UI_Goal", "mission_one_goal");
mission_two_id = layer_text_get_id("UI_Goal", "mission_two_goal");
mission_three_id = layer_text_get_id("UI_Goal", "mission_three_goal");



layer_set_visible("UI_PressTab", true);