var bbox_side;
var collision;
var tile_sizes;
var index = 0;

var tmp1 = argument[0];
var tmp2 = argument[1];

for (var i = 0; i < array_length_1d(tmp1); i++) {
	collision[i] = layer_tilemap_get_id(tmp1[i]);
	tile_sizes[i] = int64(tmp2[i]);
}

//get side for collision
if (y_move > 0) {
	bbox_side = bbox_bottom;
}
else {
	bbox_side = bbox_top;
}

for (index = 0; index < array_length_1d(tmp1); index++) {
	if (tilemap_get_at_pixel(collision[index], bbox_left, bbox_side + y_move) != 0 || 
		tilemap_get_at_pixel(collision[index], bbox_right, bbox_side + y_move) != 0) {
		y = int64(y);
		var grid = round(bbox_side / tile_sizes[index]) * tile_sizes[index];
		var ty = grid - bbox_side;
		if (y_move > 0)
			ty--;
		return ty;
	}
}
return y_move;
