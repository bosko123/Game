with (obj_camera) {
	var font = asset_get_index("fnt_pixel_" + string(argument[0]) + "_" + string(argument[0] * window_scale));
	if (font > -1) {
		draw_set_font(font);
	}
	else {
		font = asset_get_index("fnt_pixel_" + string(argument[0]));
		draw_set_font(font);
	}
}