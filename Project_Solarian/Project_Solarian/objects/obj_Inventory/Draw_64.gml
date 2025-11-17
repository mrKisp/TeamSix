draw_sprite_ext(inventory_background, image_index, 128, 128, 35, 16, 0, c_white, 1);
draw_sprite_ext(inventory_description_box, image_index, 640, 160, 18, 14, 0, c_white, 1);
draw_sprite_ext(inventory_description_box, image_index, 160, 256, 14, 11, 0, c_white, 1);

var description_box_right_x = 672;
var description_box_right_y = 192;
var description_box_left_x = 192;
var description_box_left_y = 288;

var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);

// draw text
draw_set_font(fnt_description);
draw_text(description_box_right_x, description_box_right_y, right_text_1);

// shitty way to do this jesus
// Draw goal in green for complete goal
if (global.items.iron >= 2) draw_set_colour(c_green);
	else draw_set_colour(c_white);
	
draw_text(description_box_right_x, description_box_right_y + string_height(right_text_1) + 16, right_text_2);

if (global.items.hydrogen >= 5) draw_set_colour(c_green);
	else draw_set_colour(c_white);
	
draw_text(description_box_right_x, description_box_right_y + string_height(right_text_1) + string_height(right_text_2) + 16, right_text_3);

draw_set_colour(c_white); // Make sure draw color is back to default

copy_codex = global.codex.get();
var itembox_base_x = 160;
var itembox_base_y = 160;
var spacing_x = 32;
var x_multiplier = 3;

for (var i = 0; i < array_length(copy_codex); i++)
{
	// currently it holds 5 columns, but we can expand by changing the x_multipler to 2
	// so in total it can fit 2 more = total of 7 columns
	var item = copy_codex[i];
	var draw_x = itembox_base_x + (i * x_multiplier * spacing_x);
	var draw_y = itembox_base_y;
	draw_sprite_ext(inventory_item_box, image_index, draw_x, draw_y, 2, 2, 0, c_white, 1);
	switch (item.name)
	{
		// adjust case if needed, when theres more material
		case "datapad":
			draw_sprite(spr_data_pad, image_index, draw_x, draw_y);
			break;
		case "hydrogen":
			draw_sprite(spr_Hydrogen, image_index, draw_x, draw_y);
			break;
		case "iron":
			draw_sprite(spr_Iron, image_index, draw_x, draw_y);
			break;
		case "helium":
			draw_sprite(spr_helium, image_index, draw_x, draw_y);
			break;
		case "titanium":
			draw_sprite(spr_Titanium, image_index, draw_x, draw_y);
			break;
		case "sulfur":
			draw_sprite(spr_Sulfur, image_index, draw_x, draw_y);
			break;
	}
	draw_set_font(fnt_count);
	draw_text(draw_x + spacing_x - 4, draw_y + (spacing_x * 2), item.quantity);
	
	if (mouse_check_button_pressed(mb_left))
	{
		if (point_in_rectangle(mx, my, draw_x, draw_y, draw_x + 64, draw_y + 64))
		{
			selected_item = item;
			has_clicked_item_one = !has_clicked_item_one;
			show_debug_message("Item clicked: " + string(selected_item.name));
		}
	}
}


if (has_clicked_item_one && is_struct(selected_item))
{
	switch (selected_item.name)
	{
		case "datapad":
			draw_text(description_box_left_x, description_box_left_y, datapad_text);
			break;
		case "hydrogen":
			draw_text(description_box_left_x, description_box_left_y, hydrogen_text);
			break;
		case "iron":
			draw_text(description_box_left_x, description_box_left_y, iron_text);
			break;
		case "helium":
			draw_text(description_box_left_x, description_box_left_y, helium_text);
			break;
		case "titanium":
			draw_text(description_box_left_x, description_box_left_y, titanium_text);
			break;
		case "sulfur":
			draw_text(description_box_left_x, description_box_left_y, sulfur_text);
			break;
	}
}