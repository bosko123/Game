sc_set_font(16);

draw_sprite_part_ext(spr_health_bar, 0, 0, 0, 147, 39, healh_bar_x, healh_bar_y, cam.window_scale, cam.window_scale, c_white, 1);
draw_sprite_part_ext(spr_health_bar, 0, 0, 39, 25, 24, heart_x, heart_y, cam.window_scale, cam.window_scale, c_white, 1);

draw_sprite_part_ext(spr_health_bar, 0, 100 - hp_per, 63, hp_per, 17, healh_bar_x + 39 * cam.window_scale, healh_bar_y + 11 * cam.window_scale, cam.window_scale, cam.window_scale, c_white, 0.25);

if (hp_bar_per > hp_per) {
	if (hp_bar_per > 0) {
		draw_sprite_part_ext(spr_health_bar, 0, 100 - hp_bar_per, 63, hp_bar_per, 17, healh_bar_x + 39 * cam.window_scale, healh_bar_y + 11 * cam.window_scale, cam.window_scale, cam.window_scale, c_white, 0.5);
	}
	if (hp_per > 0) {
		draw_sprite_part_ext(spr_health_bar, 0, 100 - hp_per, 63, hp_per, 17, healh_bar_x + 39 * cam.window_scale, healh_bar_y + 11 * cam.window_scale, cam.window_scale, cam.window_scale, c_white, 1);
	}
}
else if (hp_bar_per < hp_per) {
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

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_set_color(c_black);
draw_text(healh_bar_x + 89 * cam.window_scale - cam.window_scale, healh_bar_y + 22 * cam.window_scale + cam.window_scale, string(current_hp) + "/" + string(max_hp));
draw_set_color(c_white);
draw_text(healh_bar_x + 89 * cam.window_scale, healh_bar_y + 22 * cam.window_scale, string(current_hp) + "/" + string(max_hp));
