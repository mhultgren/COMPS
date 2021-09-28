contains_structure = object_contained != -1 && object_is_ancestor(object_contained, oStructure);
contains_flora = object_contained != -1 && object_is_ancestor(object_contained, oFlora);
contains_water = object_contained != -1 && object_is_ancestor(object_contained, oWater);

if (contains_flora) {
	with instance_nearest(x, y, oFlora) other.depth = depth + 1;
} else if (contains_structure) {
	with instance_nearest(x, y, oStructure) other.depth = depth - 1;
} else if (contains_water) {
	with instance_nearest(x, y, oWater) other.depth = depth + 1;
} else depth = prev_depth;

if (!instance_exists(oMultiCellCreator)) {
	if (global.building_selected && position_meeting(mouse_x, mouse_y, id)) {
		if (contains_structure || contains_water) image_index = 2;
		else image_index = 1;
	} else {
		image_index = 0;
	}
} else {
	var cell_x = floor(mouse_x / 64) * 64;
	var cell_y = floor(mouse_y / 64) * 64;
	
	var is_in_rectangle = point_in_rectangle(x, y, cell_x, cell_y, cell_x + 128, cell_y + 128);
	
	if (is_in_rectangle) {
		if (contains_structure || contains_water) image_index = 2;
		else image_index = 1;
	} else image_index = 0;
}

if (cell_group_selected) {
	with cell_group {
		if (contains_structure) other.image_index = 2;
		else other.image_index = 1;
	}
}