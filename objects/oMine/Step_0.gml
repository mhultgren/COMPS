event_inherited();

if (!under_construction) {
	if (mouse_check_button_pressed(mb_left)) {
		var iso_mouse_x = screen_to_tile_x(mouse_x, mouse_y);
		var iso_mouse_y = screen_to_tile_y(mouse_x, mouse_y);
		
		var building_size = getBuildingSize(object_index);
		
		var mine_width = building_size[0] / 64;
		var mine_height = building_size[1] / 64;
		
		// generate gold on mouse click
		if (iso_mouse_x >= cell_row && iso_mouse_x < cell_row + mine_width) && (iso_mouse_y >= cell_column && iso_mouse_y < cell_column + mine_height) {
			var room_x = tile_to_screen_x(parent_cell_row+1+(building_size[0]/64/2), parent_cell_col+1);
			var room_y = tile_to_screen_y(parent_cell_row+1, parent_cell_col+1);
			
			instance_create_layer(room_x, room_y, "Grid", oGold);
			
			global.coins += amount_generated_on_click * instance_number(oMine);
		}
	}
}