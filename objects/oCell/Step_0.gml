contains_structure = object_contained != -1 && object_is_ancestor(object_contained, oStructure);
contains_flora = object_contained != -1 && object_is_ancestor(object_contained, oFlora);
contains_water = terrain == "water" || terrain == "boat";

if (!instance_exists(oMultiCellCreator)) {
	if (global.building_selected) {
		var iso_mouse_x = screen_to_tile_x(mouse_x, mouse_y);
		var iso_mouse_y = screen_to_tile_y(mouse_x, mouse_y);
		
		if (iso_mouse_x == cell_row && iso_mouse_y == cell_column) {
			var creator_building = 0;
			
			if (contains_flora) {
				with object_contained {
					image_index = red_index;
				}
			}
			
			with oCreator {
				creator_building = building;
			}
		
			if (!meetsRequirements(creator_building, id, 0)) image_index = 2;
			else image_index = 1;
		} else {
			if (contains_flora) {
				with object_contained {
					image_index = normal_index;
				}
			}
			
			image_index = 0;
		}
	}
} else {
	var iso_mouse_x = screen_to_tile_x(mouse_x, mouse_y);
	var iso_mouse_y = screen_to_tile_y(mouse_x, mouse_y);
	
	var multi_cell_sprite_width, multi_cell_sprite_height, building_size;
	
	with oMultiCellCreator {
		building_size = getBuildingSize(building);
	}
	
	multi_cell_sprite_width = building_size[0]/64;
	multi_cell_sprite_height = building_size[1]/64;
	
	var is_in_rectangle = (cell_row >= iso_mouse_x && cell_row < iso_mouse_x + multi_cell_sprite_width) && (cell_column >= iso_mouse_y && cell_column < iso_mouse_y + multi_cell_sprite_height);
	
	if (is_in_rectangle) {
		if (contains_flora) {
			with object_contained {
				image_index = red_index;
			}
		}
		
		if (contains_structure || contains_water) image_index = 2;
		else image_index = 1;
	} else {
		if (contains_flora) {
			with object_contained {
				image_index = normal_index;
			}
		}
		
		image_index = 0;
	}
}

if (cell_group_selected) {
	with cell_group {
		if (contains_structure) other.image_index = 2;
		else other.image_index = 1;
	}
}