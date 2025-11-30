if(current_Playlist != old_playlist)
{
	audio_sound_gain(old_playlist,0,2000);
	audio_stop_sound(old_playlist);
	audio_play_sound(current_Playlist,1000,true)
	audio_sound_gain(current_Playlist,0,0);
	audio_sound_gain(current_Playlist,0.3,2000);
	
	current_Playlist = old_playlist;
}