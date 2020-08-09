if (regen_rate > 0) {
	taken_damage = true;
	last_damage = get_timer();
}

current_hp -= argument[0];

if (current_hp < 0) {
	current_hp = 0;
}