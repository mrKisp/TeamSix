camera_set_view_angle(view_camera[0],90);
if(instance_exists(obj_Player_Pilot))
{
	//var _new_width = 768;
    //var _new_height = 1366;
    //camera_set_view_size(view_camera[0], _new_width, _new_height);
	camera_set_view_pos(view_camera[0], obj_Player_Pilot.x,obj_Player_Pilot.y);
	camera_set_view_border(view_camera[0], 768, 1366)
}