if(instance_exists(obj_Music))
{
	with(obj_Music)
	{
		if(other.target_Music != noone)
		{
			if current_Playlist == other.target_Music
			{
				break;
			}
			else
			{
				current_Playlist = other.target_Music;
			}
		}
		else
		{
			break;
		}
	}
}

instance_destroy();