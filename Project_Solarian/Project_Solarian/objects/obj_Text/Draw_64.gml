/// @description Insert description here
// You can write your code in this editor

//They created a custom function to handle 9 slicing. It's not great, but it works.
Nine_Slice_box_Stretch(spr_scifi_inventory01_box, x1, y1, x2, y2, background);
//set font stuff
draw_set_font(fnt_gui);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
//Sets a background shadow
draw_set_color(c_black);

//set the message to print
var _print = string_copy(message_displayed, 1, text_progress);
draw_text((x1+x2)/2, y1+8, _print);
//Writes the actual text
draw_set_color(c_white);
draw_text((x1+x2)/2, y1+7, _print);