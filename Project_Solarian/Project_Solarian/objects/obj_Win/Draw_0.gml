draw_self();

draw_set_font(fnt_logo);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_set_color(c_white);

//Janky, but it doesn't look *too* bad.
draw_text(x, y, "Good Job Explorer!\n Space Station Operational!");

draw_set_color(c_white);

draw_set_halign(fa_left);
draw_set_valign(fa_top);