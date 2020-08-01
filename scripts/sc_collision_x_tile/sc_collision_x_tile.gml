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
if (x_move > 0) {
	bbox_side = bbox_right;
}
else {
	bbox_side = bbox_left;
}

for (index = 0; index < array_length_1d(tmp1); index++;) {
	if (tilemap_get_at_pixel(collision[index], bbox_side + x_move, bbox_top) != 0 || 
		tilemap_get_at_pixel(collision[index], bbox_side + x_move, bbox_bottom) != 0) {
		var xx = int64(x);
		var grid = round(bbox_side / tile_sizes[index]) * tile_sizes[index];
		var tx = grid - bbox_side;
		if (x_move > 0)
			tx--;
		return tx;
	}
}
return x_move;
