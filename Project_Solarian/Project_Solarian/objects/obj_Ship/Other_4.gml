if(instance_exists(obj_Game) && instance_exists(obj_Ship))
{
	obj_Ship.current_hp = obj_Game.ship_hp;
	show_debug_message("Ship HP updated from obj_Game")
}