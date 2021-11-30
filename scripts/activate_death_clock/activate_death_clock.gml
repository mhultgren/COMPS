function activate_death_clock(){
	var building_ref, building_x, building_y, is_multicell, building_cell_row, building_cell_col;
	var building_type = -1;
	
	// TODO: make death work outwards from initial point
	// TODO: question.. destroy future buildings?
	if (instance_exists(oHouse)) {
		building_type = oHouse;
		is_multicell = false;
	} else if (instance_exists(oMine)) {
		building_type = oMine;
		is_multicell = true;
	} else if (instance_exists(oStorehouse)) {
		building_type = oStorehouse;
		is_multicell = true;
	} else if (instance_exists(oBoatHouse)) {
		building_type = oBoatHouse;
		is_multicell = false;
	} else if (instance_exists(oBridge)) {
		building_type = oBridge;
		is_multicell = true;
	} else if (instance_exists(oFuturePlaceholderOne)) {
		building_type = oFuturePlaceholderOne;
		is_multicell = false;
	} else if (instance_exists(oFuturePlaceholderTwo)) {
		building_type = oFuturePlaceholderTwo;
		is_multicell = false;
	} else if (instance_exists(oWatchTower)) {
		building_type = oWatchTower;
		is_multicell = false;
	} else if (instance_exists(oFuturePlaceholderFour)) {
		building_type = oFuturePlaceholderFour;
		is_multicell = false;
	} else if (instance_exists(oWell)) {
		building_type = oWell;
		is_multicell = true;
	} else if (instance_exists(oTutorialHouse)) {
		building_type = oTutorialHouse;
		is_multicell = false;
	}
	
	if (building_type != -1) {
		with instance_nearest(0, 0, building_type) {
			building_ref = id;
			building_x = x;
			building_y = y;
			building_cell_row = parent_cell_row;
			building_cell_col = parent_cell_col;
		}
		
		instance_destroy(building_ref);
	// TODO: stop destroy building on creation
		if (!is_multicell) {
			with global.cells[building_cell_row, building_cell_col] {
				object_contained = -1;
				object_id = -1;
				terrain = "void";
			}
		} else {
			var cell_group_id;
			
			with global.cells[building_cell_row, building_cell_col] {
				show_debug_message(object_get_name(object_contained));
				cell_group_id = cell_group;	
			}
			
			show_debug_message(string(building_x) + ", " + string(building_y));
		
			with cell_group_id {
				show_debug_message(cell_group_id);
				
				for (var i=0; i<cell_group_size; i++) {
					with cell_group[| i] {
						cell_group = -1;
						object_contained = -1;
						object_id = -1;
						terrain = "void";
					}
				}
			}
			
			instance_destroy(cell_group_id);
		}
	}

	saveGameDefault();
}