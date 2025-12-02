if(instance_exists(obj_Music))
{
	with(obj_Music)
	{
		if(other.target_Music != noone && other.target_Music != old_playlist)
		{
			current_Playlist = other.target_Music;
		}
		else
		{
			break;
		}
	}
}

instance_destroy();