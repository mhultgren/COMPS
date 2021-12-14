if (keyboard_check_pressed(vk_escape)) {
	global.coins += amount_spent;
	global.building_selected = false;
	
	if (global.zoom < 1) {
		with (oScroll) {
			global.zoom = 1;
		}
	}
	
	instance_create_layer(camera_get_view_x(view_camera[0]) + 128*global.zoom, camera_get_view_y(view_camera[0]) + 64*global.zoom, "UI", oBuildingMenu);
	instance_destroy();
}

if (mouse_check_button_pressed(mb_left) && within_bounds) {
	with (global.cells[iso_mouse_x, iso_mouse_y]) {
		if (meetsRequirements(other.building, id, -1)) {
			var _addedId = 0;
			var _addedObject = 0;
			var _cellRow = other.iso_mouse_x;
			var _cellCol = other.iso_mouse_y;
			
			if (contains_flora) {
				with instance_nearest(x, y, oFlora) instance_destroy();
			}
			
			// create building at cell location,
			// setting building's parameters on creation
			with instance_create_layer(x, y, "Buildings", other.building) {
				_addedObject = object_index;
				_addedId = id;
				
				parent_cell_row = _cellRow;
				parent_cell_col = _cellCol;
				
				var flora_depth = 0;
				
				if (instance_exists(oFlora)) {
					with instance_nearest(x, y+32, oFlora) flora_depth = depth;
				}
				
				depth = flora_depth - 1;
			}
			
			object_contained = _addedObject;
			object_id = _addedId;
				
			// add boat to adjacent water tile if boat house created
			if (object_contained == oBoatHouse) add_boat(id);
				
			global.building_selected = false;
			saveGameDefault();
		}
	}
	
	if (!global.building_selected) {
		if (global.zoom < 1) {
			with (oScroll) {
				global.zoom = 1;
			}
		}
		
		instance_create_layer(camera_get_view_x(view_camera[0]) + 128*global.zoom, camera_get_view_y(view_camera[0]) + 64*global.zoom, "UI", oBuildingMenu);
		instance_destroy();
	}
		
}

iso_mouse_x = screen_to_tile_x(mouse_x, mouse_y);
iso_mouse_y = screen_to_tile_y(mouse_x, mouse_y);

within_bounds = (iso_mouse_x >= 0 && iso_mouse_x < global.cells_height) && (iso_mouse_y >= 0 && iso_mouse_y < global.cells_width);