// TODO: add clickable cancel
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
	var cell_list = ds_list_create();
	var building_size = getBuildingSize(building);
	var struct_width = building_size[0];
	var struct_height = building_size[1];
	var cell_row = iso_mouse_x;
	var cell_col = iso_mouse_y;
	
	with (global.cells[iso_mouse_x, iso_mouse_y]) {
		var cell_list_size = collision_rectangle_list(x-32, y-32, x+(struct_width - 33), y+(struct_height - 33), oCell, false, false, cell_list, false);
		
		if (meetsRequirements(other.building, id, cell_list)) {
			var _addedId = 0;
			var _addedObject = 0;
			
			with instance_create_layer(x-32, y-32, "Buildings", other.building) {
				_addedObject = object_index;
				_addedId = id;
				parent_cell_row = cell_row;
				parent_cell_col = cell_col;
			}
			
			with instance_create_layer(x-32, y-32, "UI", oCellGroup) {
				var group_id = id;
				cell_group = cell_list;
				cell_group_size = cell_list_size;
				
				for (var i=0; i<cell_group_size; i++) {
					with cell_group[| i] {
						cell_group = group_id;
						object_contained = _addedObject;
						object_id = _addedId;
						
						if (contains_flora) with instance_nearest(x, y, oFlora) instance_destroy();
					}
				}
			}
			
			/*
			if (instance_exists(oFlora)) {
				var flora_depth = 0;
				
				with instance_nearest(x + sprite_width*.5, y + sprite_height + 20, oFlora) flora_depth = depth;
				
				with _addedObject {
					depth = flora_depth - 1;
				}
			}
			*/
				
			global.building_selected = false;
			saveGameDefault();
		} else ds_list_destroy(cell_list);
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