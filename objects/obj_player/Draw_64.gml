font = font_add_sprite_ext(spr_font, " !\"#$%&'()*+,-./0123456789:;<=>?@", true, 0);
draw_set_font(font);
draw_text_transformed(100, 100, " !\"#$%&'()*+,-./\n0123456789:;<=>?@", 4, 4, 0);

draw_sprite_part_ext(spr_health_bar, 0, 0, 0, 147, 39, healh_bar_x, healh_bar_y, cam.window_scale, cam.window_scale, c_white, 1);
draw_sprite_part_ext(spr_health_bar, 0, 0, 39, 25, 24, heart_x, heart_y, cam.window_scale, cam.window_scale, c_white, 1);

draw_sprite_part_ext(spr_health_bar, 0, 100 - hp_per, 63, hp_per, 17, healh_bar_x + 39 * cam.window_scale, healh_bar_y + 11 * cam.window_scale, cam.window_scale, cam.window_scale, c_white, 0.25);

if (health_bar_value > current_hp) {
	if (hp_bar_per > 0) {
		draw_sprite_part_ext(spr_health_bar, 0, 100 - hp_bar_per, 63, hp_bar_per, 17, healh_bar_x + 39 * cam.window_scale, healh_bar_y + 11 * cam.window_scale, cam.window_scale, cam.window_scale, c_white, 0.5);
	}
	if (hp_per > 0) {
		draw_sprite_part_ext(spr_health_bar, 0, 100 - hp_per, 63, hp_per, 17, healh_bar_x + 39 * cam.window_scale, healh_bar_y + 11 * cam.window_scale, cam.window_scale, cam.window_scale, c_white, 1);
	}
}
else if (health_bar_value < current_hp) {
	if (hp_per > 0) {
		draw_sprite_part_ext(spr_health_bar, 0, 100 - hp_per, 63, hp_per, 17, healh_bar_x + 39 * cam.window_scale, healh_bar_y + 11 * cam.window_scale, cam.window_scale, cam.window_scale, c_white, 0.5);
	}
	if (hp_bar_per > 0) {
		draw_sprite_part_ext(spr_health_bar, 0, 100 - hp_bar_per, 63, hp_bar_per, 17, healh_bar_x + 39 * cam.window_scale, healh_bar_y + 11 * cam.window_scale, cam.window_scale, cam.window_scale, c_white, 1);
	}
}
else {
	draw_sprite_part_ext(spr_health_bar, 0, 100 - hp_bar_per, 63, hp_bar_per, 17, healh_bar_x + 39 * cam.window_scale, healh_bar_y + 11 * cam.window_scale, cam.window_scale, cam.window_scale, c_white, 1);
}

draw_sprite_part_ext(spr_health_bar, 0, 0, 80, 100, 17, healh_bar_x + 39 * cam.window_scale, healh_bar_y + 11 * cam.window_scale, cam.window_scale, cam.window_scale, c_white, 1);
draw_sprite_part_ext(spr_health_bar, 0, 0, 97, 100, 7, healh_bar_x + 39 * cam.window_scale, healh_bar_y + 11 * cam.window_scale, cam.window_scale, cam.window_scale, c_white, 1);

draw_text_transformed(healh_bar_x + 39 * cam.window_scale, healh_bar_y + 11 * cam.window_scale, string(current_hp) + "/" + string(max_hp), 2, 2, 0);
font_delete(font);
