if(layer_get_visible("Colliders" == true))
{
	layer_set_visible("Colliders", false);
}

//Fixes weird bug with main menu ship jumping around. 
if(room == rm_Main_menu)
{
	if(instance_exists(obj_Ship))
	{
		obj_Ship.x = 1088;
		obj_Ship.y = 256;
	}
}