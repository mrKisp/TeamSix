image_alpha = 0.5;

layer_text_x(textId, 53);
layer_text_y(textId, 0);
layer_text_halign(textId, textalign_center);
layer_text_valign(textId, textalign_top);
layer_text_wrap(textId, true);

if (count != 0)
	display_info_on_hover();
else
	display_empty();