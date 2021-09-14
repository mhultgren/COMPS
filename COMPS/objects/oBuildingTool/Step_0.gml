if (mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, id)) {
	selected = !selected;
	
	if (selected) {
		image_index = 1;
		
		instance_create_layer(128, 64, "UI", oBuildingMenu);
		with (instance_nearest(x, y, oGrid)) {
			drawCells = true;
			changed = true;
		}
	} else {
		with (instance_nearest(128, 64, oBuildingMenu)) instance_destroy(id);
	}
}