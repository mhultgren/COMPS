if (!instance_exists(oMultiCellCreator)) {
	if (global.building_selected && position_meeting(mouse_x, mouse_y, id)) {
		image_index = red_index;
	} else image_index = normal_index;
} else {
	var cell_x = floor(mouse_x / 64) * 64;
	var cell_y = floor(mouse_y / 64) * 64;
	
	var multi_cell_sprite_width = 0;
	var multi_cell_sprite_height = 0;
	
	with oMultiCellCreator {
		multi_cell_sprite_width = sprite_get_width(sprite);
		multi_cell_sprite_height = sprite_get_height(sprite);
	}
	
	var is_in_rectangle = point_in_rectangle(x, y, cell_x, cell_y, cell_x + multi_cell_sprite_width, cell_y + multi_cell_sprite_height);
	
	if (is_in_rectangle) {
		image_index = red_index;
	} else image_index = normal_index;
}