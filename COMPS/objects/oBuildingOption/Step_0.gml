if (mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, id)) {
	selected = !selected;
	global.building_selected = selected;
}

if (selected) {
	image_index = 1;
	
	// TODO: change position meeting to apply to other things/ui elements which should not be built upon
	if (mouse_check_button_pressed(mb_left) && !position_meeting(mouse_x, mouse_y, oBuildingOption)) {
		
		with (instance_nearest(mouse_x, mouse_y, oCell)) {
			if (!contains_structure) {
				instance_create_layer(x, y, "Buildings", other.building);
				
				if (contains_flora) {
					with instance_nearest(x, y, oFlora) instance_destroy();
				}
			}
		}
		
	}
} else image_index = 0;