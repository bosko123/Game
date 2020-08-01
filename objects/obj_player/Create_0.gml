fpr = 4;
mv_speed = 3;
current_hp = 1;
max_hp = 100;

cam = instance_find(obj_camera, 0);

healh_bar_x = (window_get_width() - 147) / 8 / 10;
healh_bar_y = (window_get_height() - 39) / 8 / 10;
heart_x = 0;
heart_y = 0;

health_bar_value = current_hp;
hp_per = int64((current_hp / max_hp) * 100);
hp_bar_per = int64((health_bar_value / max_hp) * 100);
animation_speed = 0;
just_updated = false;
