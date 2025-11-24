direction = random(360);
explodable = true;

if (is_stationary) instance_destroy();
else
{
	sprite_index = spr_asteroid;
	x = random(3600);
}
if (instance_exists(obj_Ship))
{
	if (random(20) < 1)
		global.items.hydrogen++;
	if (obj_Ship.current_hp < obj_Ship.max_health)
		if (obj_Ship.current_hp+heals > obj_Ship.max_health)
			obj_Ship.current_hp = obj_Ship.max_health;
		else obj_Ship.current_hp += heals;
}