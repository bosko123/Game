if (current_hp == max_hp || regen_rate == 0)
	return;
	
damage = get_timer() - last_damage;
	
if (damage > (damage_cooldown * power(10, 6) / argument[1])) {
	taken_damage = false;
	damage = 0;
}
	
if (taken_damage)
	return;

regen += get_timer() - last_regen;
last_regen = get_timer();

if (regen > (regen_rate * power(10, 6) / argument[0])) {
	sc_heal(1);
	regen = 0;
}