fpr = 4;
mv_speed = 3;
current_hp = 1;
max_hp = 100;
regen_rate = 0.2;
damage_cooldown = 3;

cam = instance_find(obj_camera, 0);

healh_bar_x = (window_get_width() - 147) / 8 / 10;
healh_bar_y = (window_get_height() - 39) / 8 / 10;
heart_x = 0;
heart_y = 0;

hp_per = int64((current_hp / max_hp) * 100);
hp_bar_per = hp_per;
