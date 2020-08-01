var colliding_entity = instance_place(x + x_move, y, obj_entity);
var mv_direction = x_move / abs(x_move);

if (colliding_entity != noone) {
	if (x_move > 0) {
		return (colliding_entity.bbox_left - bbox_right - 1) * mv_direction;
	}
	else {
		return (bbox_left - colliding_entity.bbox_right - 1) * mv_direction;
	}
}
else {
	return x_move;
}
