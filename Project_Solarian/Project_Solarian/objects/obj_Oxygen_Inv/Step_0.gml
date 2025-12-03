if (object_exists(obj_Game))
{
	count = global.items.oxygen;
	if (count != 0)
		sprite_index = spr_oxygen;
	else sprite_index = spr_unknown_item;
}