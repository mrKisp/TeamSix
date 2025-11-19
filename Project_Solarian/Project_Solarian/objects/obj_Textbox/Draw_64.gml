/// @description Draw text
// You can write your code in this editor

//NOT WORKING
//The text is supposed to show up, however for whatever reason thet ext isn't displaying correctly. 
//I think there is also a much better way of handling this, but I was trying to work off of memory from 
//an old RPG project which has very different setup.
draw_set_font(fnt_gui);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_color(c_white);
draw_text(900, 450, "TEST TEXT");