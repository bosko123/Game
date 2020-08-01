var colliding_entity = instance_place(x, y + y_move, obj_entity);
var mv_direction = y_move / abs(y_move);

if (colliding_entity != noone) {
	if (y_move > 0) {
		return (colliding_entity.bbox_top - bbox_bottom - 1) * mv_direction;
	}
	else {
		return (bbox_top - colliding_entity.bbox_bottom - 1) * mv_direction;
	}
}
else {
	return y_move;
}
