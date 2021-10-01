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

if (mouse_check_button_pressed(mb_left)) {
	var cell_list = ds_list_create();
	var struct_width = sprite_get_width(sprite);
	var struct_height = sprite_get_height(sprite);
		
	
	with (instance_nearest(mouse_x, mouse_y, oCell)) {
		var cell_list_size = collision_rectangle_list(x-32, y-32, x+(struct_width - 33), y+(struct_height - 33), oCell, false, false, cell_list, false);
		
		for (var i=0; i<cell_list_size; i++) {
			with cell_list[| i] {
				show_debug_message(string(x) + ", " + string(y));
			}
		}
		
		if (meetsRequirements(other.building, id, cell_list)) {
			var _addedId = 0;
			var _addedObject = 0;
			
			with instance_create_layer(x-32, y-32, "Buildings", other.building) {
				_addedObject = object_index;
				_addedId = id;
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