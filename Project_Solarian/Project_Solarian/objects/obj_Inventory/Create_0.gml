copy_codex = undefined;

//codex.add_item("Hydrogen", 5, spr_Hydrogen);

//show_debug_message(codex);

//codex.subtract_item("Hydrogen", 2);

//show_debug_message(codex);


// these width and height are obtained by the rm_GYM width and height
display_set_gui_size(1391, 768);
visible = false;

selected_item = noone;
has_clicked_item_one = false;

// top left item box = 64, 64
// right side big box = 640, 160

// im really bad at storytelling lol
// TODO: make it dynamically update for every datapad you pick up
right_text_1 = 
	"Hello fellow astronaut! You are given a mission to fly \n" + 
	"around the space with your spaceship, collect materials, and \n" + 
	"learn more about The Solar System. \n" +
	"Some info: \n" + 
	"  - New items will be displayed in your Tablet. \n" +
	"  - The green bar on top left is your fuel bar for your jetpack. \n" +
	"  - You can long hold the Up Arrow to fly up, but it will drain \n" +
	"your bar so watch out! \n" +
	"  - Click on the item to see more info in the top left box. \n" + 
	"  - Iron is found in Mars. \n" +
	"  - Hydrogen is found in Jupiter.";
	
right_text_2 = 
	"Mission 1: Collect 2 Iron";
	
right_text_3 = 
	"Mission 2: Collect 5 Hydrogen";
	
datapad_text =
	"Datapad, kind of like a guidebook \n" +
	"and gives you good tips";
	
hydrogen_text = 
	"Hydrogen is the most abundant element \n" + 
	"in the universe and makes up nearly all \n" + 
	"of Jupiter's atmosphere. Under the planet's \n" + 
	"immense pressure, hydrogen transforms into a \n" + 
	"rare metallic state that conducts electricity and \n" +
	"helps power Jupiter's massive magnetic field — \n" + 
	"one of the strongest in the solar system.";

iron_text = 
	"Mars is rich in iron, especially in the \n" + 
	"form of iron oxide dust that coats its surface \n" + 
	"and gives the planet its signature red color. \n" + 
	"These iron compounds suggest a long history of \n" + 
	"volcanic activity and interactions with water, \n" + 
	"making Mars a key target in the search for ancient life.";
