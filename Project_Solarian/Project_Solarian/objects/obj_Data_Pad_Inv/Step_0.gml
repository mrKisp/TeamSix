if (object_exists(obj_Game))
{
	count = global.items.datapad;
	if (count != 0)
		sprite_index = spr_datapad;
	else
		sprite_index = spr_unknown_item;
}