if(instance_exists(obj_Game))
{
	switch (obj_Game.current_state) {
	    case SPACE_STATION_STATE.PHASE_1:
	        // Goal 1
	        text_for_display = "Goals:\n 5 Iron\n10 Hydrogen";
	        break;
	    case SPACE_STATION_STATE.PHASE_2:
	        // Goal 2
	        text_for_display = "Goals:\n10 Iron\n20 Hydrogen\n10 Helium\n5  Sulfur\n";
	        break;
	    case SPACE_STATION_STATE.PHASE_3:
	        // Goal 3
	        text_for_display = "Goals:\n25 Hydrogen\n15 Helium\n10 Sulfur\n5  Methane\n3  Titanium";        
	        break;
	    // ... other states
	}
}