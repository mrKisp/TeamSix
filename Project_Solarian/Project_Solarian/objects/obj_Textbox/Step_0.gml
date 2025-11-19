if(instance_exists(obj_Game))
{
	switch (obj_Game.current_state) {
	    case SPACE_STATION_STATE.PHASE_1:
	        // Goal 1
	        text_for_display = 
			@"
				Goals: 
				5 Iron
				10 Hydrogen
			"
	        break;
	    case SPACE_STATION_STATE.PHASE_2:
	        // Goal 2
	        text_for_display = 
			@"
				Goals: 
				10 Iron
				20 Hydrogen
				10 Helium
				5  Sulfur
			"
	        break;
	    case SPACE_STATION_STATE.PHASE_3:
	        // Goal 3
	        text_for_display = 
			@"
				Goals: 
				25 Hydrogen
				15 Helium
				10 Sulfur
				5  Methane
				3  Titanium
			"        
	        break;
	    // ... other states
	}
}