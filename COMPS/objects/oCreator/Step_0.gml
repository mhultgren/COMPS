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

// TODO: change position meeting to apply to other things/ui elements which should not be built upon
if (mouse_check_button_pressed(mb_left)) {
		
	with (instance_nearest(mouse_x, mouse_y, oCell)) {
		if (meetsRequirements(other.building, id, 0)) {
			var _addedId = 0;
			var _addedObject = 0;
			
			if (contains_flora) {
				with instance_nearest(x, y, oFlora) instance_destroy();
			}
			
			with instance_create_layer(x, y, "Buildings", other.building) {
				_addedObject = object_index;
				_addedId = id;
				
				var flora_depth = 0;
				
				if (instance_exists(oFlora)) {
					with instance_nearest(x, y+32, oFlora) flora_depth = depth;
				}
				
				depth = flora_depth - 1;
			}
			
			object_contained = _addedObject;
			object_id = _addedId;
				
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