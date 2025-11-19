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
	
helium_text = 
	"Saturn is abundant in helium, found throughout its \n" +
	"deep atmosphere where the element forms a major part \n" +
	"of the planet's composition. \n" +
	"Over time, helium droplets slowly rain downward \n" +
	"through Saturn's dense clouds, releasing heat and \n" +
	"shaping the planet’s powerful weather systems. \n" +
	"This unique helium cycle makes Saturn one of the most \n" +
	"valuable sources of the element needed for the station.";
titanium_text = 
	"Titanium is a rare and valuable material scattered \n" +
	"across several planets, including Saturn, Mars, and \n" +
	"Venus. \n" +
	"Instead of forming naturally in large deposits, most \n" +
	"titanium arrives on these worlds carried by ancient \n" +
	"meteorites that crashed into their surfaces. \n" +
	"These meteorite fragments contain resilient titanium \n" +
	"alloys forged in the intense heat of stellar events, \n" +
	"making the metal both lightweight and incredibly \n" +
	"durable—an essential resource wherever it is found.";
sulfur_text = 
	"Sulfur is a common and striking element on Venus, \n" +
	"where its thick atmosphere and volcanic landscape \n" +
	"produce vast amounts of sulfuric compounds. \n" +
	"These materials contribute to the planet’s dense \n" +
	"clouds and harsh yellow tint. \n" +
	"Trace amounts of sulfur can also be found on Mars \n" +
	"and Earth, typically formed through volcanic activity \n" +
	"or ancient geological processes.";
