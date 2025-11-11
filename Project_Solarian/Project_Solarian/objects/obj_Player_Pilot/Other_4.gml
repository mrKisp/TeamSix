if(instance_exists(obj_Game) && instance_exists(obj_Player_Pilot))
{
	obj_Player_Pilot.current_hp = obj_Game.player_hp;
}