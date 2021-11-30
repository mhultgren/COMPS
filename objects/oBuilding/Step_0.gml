if (under_construction) {
	var seconds_passed = unixTimestamp(date_current_datetime()) - time_created;
	
	if (seconds_passed >= time_required) {
		under_construction = false;
		image_index = 2;
		time_last_generated = unixTimestamp(date_current_datetime()) - (seconds_passed - time_required);
	} else if (seconds_passed >= time_required * 0.5) image_index = 1;
	else image_index = 0;
	
	time_left = time_required - seconds_passed;
} else {
	if (generates_gold) {
		var seconds_passed = unixTimestamp(date_current_datetime()) - time_last_generated;
		
		// TODO: pass cell row & col to help with gold gen
		if (seconds_passed >= time_required_generate) {
			var building_size = getBuildingSize(object_index);
			var room_x = tile_to_screen_x(parent_cell_row+1, parent_cell_col+1);
			var room_y = tile_to_screen_y(parent_cell_row+1, parent_cell_col+1);
			
			if (building_size[0] <= 64 && building_size[1] <= 64) instance_create_layer(room_x, room_y, "Grid", oGold);
			else {
				room_x = tile_to_screen_x(parent_cell_row+1+(building_size[0]/64/2), parent_cell_col+1);
				instance_create_layer(room_x, room_y, "Grid", oGold);
			}
			
			var num_to_generate = floor(seconds_passed / time_required_generate);
			
			if (!array_contains(global.parameters_met, "death clock on") || array_contains(global.parameters_met, "game over")) global.coins += amount_generated * num_to_generate;
			else global.coins -= amount_generated * num_to_generate;
			
			time_last_generated += time_required_generate * num_to_generate;
		}
		
		time_left = time_required_generate - seconds_passed;
	}
	
	image_index = 2;
}