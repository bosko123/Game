#macro view view_camera[0]
camera_set_view_size(view, view_width, view_height);

if (instance_exists(obj_player)) {
	var view_x = clamp(obj_player.x - view_width / 2, 0, room_width - view_width);
	var view_y = clamp(obj_player.y - view_height / 2, 0, room_height - view_height);
	camera_set_view_pos(view, view_x, view_y);
}

if (keyboard_check_pressed(vk_f11)) {
	if (!window_get_fullscreen()) {
		window_set_fullscreen(true);
	}
	else {
		window_set_fullscreen(false);
	}
}