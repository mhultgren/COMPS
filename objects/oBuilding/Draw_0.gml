if (under_construction && first_step) {
	first_step = false;
	
	var room_x = tile_to_screen_x(parent_cell_row+1, parent_cell_col+1);
	var room_y = tile_to_screen_y(parent_cell_row+1, parent_cell_col+1);
	
	var building_size = getBuildingSize(object_index);
	
	//TODO: draw text isometric
	if (building_size[0] > 64 || building_size[1] > 64) {
		room_x = tile_to_screen_x(parent_cell_row+1+(building_size[0]/64/2), parent_cell_col+1);
	}
	
	with instance_create_layer(room_x, room_y, "Counters", oBuildingCounter) {
		building = other.id;
		time_left = other.time_left;
	}

}