damage_player = damage_value_player;
damage_ship = damage_value_ship;
explodable = true;

if (is_stationary) asteroid_speed = 0;
else
{
	if (is_planetside)
	{
		direction = 270;
	}
	else
	{
		direction = random(360);
	}
}
//image_angle = random(360);
speed = asteroid_speed;