//draw_self();

if (image_index >= rotation * fpr + fpr or image_index < rotation * fpr) {
	image_index = rotation * fpr;
}

if (keyboard_check_pressed(vk_f1)) {
	sc_hurt(8);
}
if (keyboard_check_pressed(vk_f2)) {
	sc_heal(8);
}
if (keyboard_check_pressed(vk_f3)) {
	sc_hurt(max_hp);
}
if (keyboard_check_pressed(vk_f4)) {
	sc_heal(max_hp);
}