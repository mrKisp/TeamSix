/// @description Draw scoreboard
// Display resources collected (testing working with iron, then moving on)
// Set the text color and font
draw_set_color(c_silver);
draw_set_font(fnt_gui);

// Draw the score text in the top-left corner
draw_text(16, 16, "Iron: " + string(iron));
