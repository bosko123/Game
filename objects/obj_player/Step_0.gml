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
	y_move = -mv_speed;
}
if (keyboard_check(ord("S")) && !keyboard_check(ord("W"))) {
	rotation = 0;
	y_move = mv_speed;
}
if (keyboard_check(ord("A")) && !keyboard_check(ord("D"))) {
	rotation = 2;
	x_move = -mv_speed;
}
if (keyboard_check(ord("D")) && !keyboard_check(ord("A"))) {
	rotation = 3;
	x_move = mv_speed;
}

if (x_move == 0 && y_move == 0) {
	image_index = rotation * fpr;
}

hp_per = int64((current_hp / max_hp) * 100);
hp_bar_per = int64((health_bar_value / max_hp) * 100);

if (health_bar_value != current_hp) {
	if (!just_updated) {
		animation_speed = (max_hp - health_bar_value) / max_hp;
	}
	
	if (health_bar_value < current_hp) {
		health_bar_value++;
	}
	else {
		health_bar_value--;
	}
	just_updated = true;
}
else {
	just_updated = false;
}

collisions[0] = "Tile_Collision_64";
collisions[1] = "Tile_Collision_8";

tile_sizes[0] = 64;
tile_sizes[1] = 8;

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
