aspect_ratio = display_get_width() / display_get_height();
ideal_height = 360;
ideal_width = round(ideal_height * aspect_ratio);

if (ideal_width mod 2 != 0)
	ideal_width++;

view_width = ideal_width;
view_height = ideal_height;

window_scale = 2;
window_set_size(view_width * window_scale, view_height * window_scale);
alarm[0] = 1;

surface_resize(application_surface, view_width * window_scale, view_height * window_scale);