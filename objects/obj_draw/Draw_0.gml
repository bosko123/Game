if (ds_exists(depth_grid, ds_type_grid)) {
	//sort the grid by Y
	ds_grid_sort(depth_grid, 1, true);
	
	//draw all instances
	for (var i = 0; i < ds_grid_height(depth_grid); i++) {
		//draw instance
		var id_instance = depth_grid[# 0, i];
		
		with(id_instance) {
			draw_self();
			//draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, false);
		}
	}
	
	ds_grid_destroy(depth_grid);
}
