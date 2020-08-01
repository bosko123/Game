with (obj_draw) {
	//the first obj
	if (!ds_exists(depth_grid, ds_type_grid)) {
		//create the depth grid data structure
		depth_grid = ds_grid_create(2, 1);
		
		//add it's id and Y to the grid
		depth_grid[# 0, 0] = other;
		depth_grid[# 1, 0] = other.y;
	}
	else {
		//resize the current grid
		var grid_height = ds_grid_height(depth_grid);
		ds_grid_resize(depth_grid, 2, grid_height + 1);
		
		//add it's id and Y to the grid
		depth_grid[# 0, grid_height] = other;
		depth_grid[# 1, grid_height] = other.y;
	}
}