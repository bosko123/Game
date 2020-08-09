x_move = 0;
y_move = 0;

if (int64((current_hp / max_hp) * 100) <= 25) {
	heart_x = healh_bar_x + int64(random(1) * 5 + 5) * cam.window_scale;
	heart_y = healh_bar_y + int64(random(1) * 5 + 5) * cam.window_scale;
}
else {
	heart_x = healh_bar_x + 7 * cam.window_scale;
	heart_y = healh_bar_y + 7 * cam.window_scale;
}

if (keyboard_check(ord("W")) && !keyboard_check(ord("S"))) {
	rotation = 1;
	y_move = -mv_speed * global.delta_multiplier;
}
if (keyboard_check(ord("S")) && !keyboard_check(ord("W"))) {
	rotation = 0;
	y_move = mv_speed * global.delta_multiplier;
}
if (keyboard_check(ord("A")) && !keyboard_check(ord("D"))) {
	rotation = 2;
	x_move = -mv_speed * global.delta_multiplier;
}
if (keyboard_check(ord("D")) && !keyboard_check(ord("A"))) {
	rotation = 3;
	x_move = mv_speed * global.delta_multiplier;
}

if (x_move == 0 && y_move == 0) {
	image_index = rotation * fpr;
}

hp_per = int64((current_hp / max_hp) * 100);
var percent = hp_per;

if (hp_bar_per < percent) {
	if (hp_bar_per + global.delta_multiplier <= percent) {
		hp_bar_per += global.delta_multiplier;
	}
	else {
		hp_bar_per = percent;
	}
}
else if (hp_bar_per > percent) {
	if (hp_bar_per - global.delta_multiplier >= percent) {
		hp_bar_per -= global.delta_multiplier;
	}
	else {
		hp_bar_per = percent;
	}
}

collisions[0] = "Tile_Collision_64";

tile_sizes[0] = 64;

tcx = sc_collision_x_tile(collisions, tile_sizes);
tcy = sc_collision_y_tile(collisions, tile_sizes);

ecx = sc_collision_x_entity();
ecy = sc_collision_y_entity();

//sc_move(collisions, tile_sizes);
if (x_move > 0) {
	x += min(tcx, ecx);
}
else {
	x += max(tcx, ecx);
}

if (y_move > 0) {
	y += min(tcy, ecy);
}
else {
	y += max(tcy, ecy);
}

sc_regeneration(1, 1);
