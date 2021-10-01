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
		var creator_building = 0;
		
		with oCreator {
			creator_building = building;
		}
		
		if (!meetsRequirements(creator_building, id, 0)) image_index = 2;
		else image_index = 1;
	} else {
		image_index = 0;
	}
} else {
	var cell_x = floor(mouse_x / 64) * 64;
	var cell_y = floor(mouse_y / 64) * 64;
	
	var multi_cell_sprite_width = 0;
	var multi_cell_sprite_height = 0;
	var multi_cell_building = 0;
	
	with oMultiCellCreator {
		multi_cell_sprite_width = sprite_get_width(sprite);
		multi_cell_sprite_height = sprite_get_height(sprite);
		multi_cell_building = building;
	}
	
	var is_in_rectangle = point_in_rectangle(x, y, cell_x, cell_y, cell_x + multi_cell_sprite_width, cell_y + multi_cell_sprite_height);
	
	// TODO: make multi cell use meetsRequirements()
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