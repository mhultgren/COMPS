if (mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, id)) {
	selected = !selected;
	
	if (selected) {
		image_index = 1;
		
		instance_create_layer(0, room_height, "UI", oBuildingToolbar);
		with (instance_nearest(x, y, oGrid)) {
			drawCells = true;
			changed = true;
		}
	} else {
		image_index = 0;
		
		with (instance_nearest(0, room_height-48, oBuildingToolbar)) instance_destroy(id);
		with (instance_nearest(x, y, oGrid)) {
			drawCells = false;
			changed = true;
		}
	}
}