/// @description Hydrogen Sprite and Collect Tooltip
// Draw the iron if it is visible (duh)
if(visible)
{
	draw_self()
}

// Show gui element to interact with the iron and prompt collecting it if within range
if(showInteract)
{
	draw_set_font(fnt_gui); // Assuming you have a font asset named fnt_tooltip
    draw_set_colour(c_black); // Background color of tooltip
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);

    // Draw tooltip background (adjust coordinates as needed)
    draw_rectangle(x + 10, y + 10, x + 10 + string_width(interact_message) + 10, y + 10 + string_height(interact_message) + 10, false);

    // Draw tooltip text (adjust coordinates as needed)
    draw_set_colour(c_green);
    draw_text(x + 15, y + 15, interact_message);
}