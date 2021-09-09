contains_structure = place_meeting(x, y, oStructure);

if (global.building_selected && position_meeting(mouse_x, mouse_y, id)) {
	if (contains_structure) image_index = 2;
	else image_index = 1;
} else image_index = 0;