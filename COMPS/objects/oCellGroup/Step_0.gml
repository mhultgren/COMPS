if (global.building_selected) {
	group_selected = false;
	for (var i=0; i<cell_group_size; i++) {
		with cell_group[| i] {
			if (other.group_selected) {
				cell_group_selected = true;
			} else if (position_meeting(mouse_x, mouse_y, id)) {
				other.group_selected = true;
				cell_group_selected = true;
				i = -1;
			} else {
				other.group_selected = false;
				cell_group_selected = false;
			}
		}	
	}
}