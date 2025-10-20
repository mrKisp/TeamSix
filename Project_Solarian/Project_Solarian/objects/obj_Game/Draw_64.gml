/// @description Draw scoreboard
// Display resources collected (testing working with iron, then moving on)
// Set the text color and font

draw_set_font(fnt_gui);

// Draw the score text in the top-left corner
draw_set_color(c_green);
draw_text(16, 16, "INVENTORY");

draw_set_color(c_silver);
draw_text(16, 32, "Iron: " + string(iron));

draw_set_color(c_white);
draw_text(16, 48, "Hydrogen: " + string(hydrogen));


//Objectives
draw_set_color(c_green);
draw_text(room_width-150, 16, "GOALS");

draw_set_color(c_silver);
draw_text(room_width-150, 32, "Iron: 2");

draw_set_color(c_white);
draw_text(room_width-150, 48, "Hydrogen: 5");

