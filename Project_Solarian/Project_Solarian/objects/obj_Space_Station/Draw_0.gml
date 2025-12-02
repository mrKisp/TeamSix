//Eventually not needed. Still here for testing. 
//Will turn off the mechanical layer but will leave the UI prompt to land. 
draw_self()
if(show_interact)
{
	draw_set_font(fnt_gui); // Assuming you have a font asset named fnt_tooltip
    draw_set_colour(c_black); // Background color of tooltip
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);

    // Draw tooltip background (adjust coordinates as needed)
    draw_rectangle(x + 10, y + 10, x + 10 + string_width(i_message) + 10, y + 10 + string_height(i_message) + 10, false);

    // Draw tooltip text (adjust coordinates as needed)
    draw_set_colour(c_green);
    draw_text(x + 15, y + 15, i_message);
}
