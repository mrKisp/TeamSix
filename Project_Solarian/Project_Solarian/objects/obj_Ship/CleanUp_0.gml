// Clean up the ship if it isn't on the main menu or in the solar system
if(room != rm_Solar_System && room != rm_Main_menu) instance_destroy();