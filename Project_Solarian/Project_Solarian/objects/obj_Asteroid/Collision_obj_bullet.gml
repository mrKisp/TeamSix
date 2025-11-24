if(explodable)
{
	instance_destroy(other);
	effect_create_above(ef_explosion, x, y, 1, c_white);

	sprite_index = spr_asteroid_explode;

	alarm_set(0, 20);
	explodable = false;
}






