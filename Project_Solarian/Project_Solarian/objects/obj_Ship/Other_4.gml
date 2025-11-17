if(instance_exists(obj_Game) && instance_exists(obj_Ship))
{
	obj_Ship.current_hp = obj_Game.ship_hp;
	obj_Ship.x = obj_Game.ship_x;
	obj_Ship.y = obj_Game.ship_y;
	show_debug_message("Ship HP updated from obj_Game")
}