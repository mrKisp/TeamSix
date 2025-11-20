textId = layer_text_get_id("UI_Inventory", "inv_description");
name = "";
count = 0;
planet = ""
description = "";

sprite_index = spr_unknown_item;

display_info_on_hover = function()
{
	layer_text_text(textId, $"Item Name: {name}\nCount: {count}\nFound in: {planet}\nDescription: {description}");
}

display_empty = function()
{
	layer_text_text(textId, "???");
}