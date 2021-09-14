// TODO: change position meeting to apply to other things/ui elements which should not be built upon
if (mouse_check_button_pressed(mb_left) && !position_meeting(mouse_x, mouse_y, oBuildingOption)) {
		
	with (instance_nearest(mouse_x, mouse_y, oCell)) {
		if (!contains_structure) {
			instance_create_layer(x, y, "Buildings", other.building);
				
			if (contains_flora) {
				with instance_nearest(x, y, oFlora) instance_destroy();
			}
				
			global.building_selected = false;
		}
	}
	
	if (!global.building_selected) {
		instance_create_layer(128, 64, "UI", oBuildingMenu);
		instance_destroy();
	}
		
}