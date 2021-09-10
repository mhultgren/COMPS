contains_structure = place_meeting(x, y, oStructure);
contains_flora = place_meeting(x, y, oFlora);

if (contains_flora) {
	with instance_nearest(x, y, oFlora) other.depth = depth + 1;
} else if (contains_structure) {
	with instance_nearest(x, y, oStructure) other.depth = depth - 1;
} else depth = prev_depth;

if (global.building_selected && position_meeting(mouse_x, mouse_y, id)) {
	if (contains_structure) image_index = 2;
	else image_index = 1;
} else {
	image_index = 0;
}

if (cell_group_selected) {
	with cell_group {
		if (contains_structure) other.image_index = 2;
		else other.image_index = 1;
	}
}