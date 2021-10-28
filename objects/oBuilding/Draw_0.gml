if (under_construction) {
	draw_set_color(c_black);
	
	var building_size = getBuildingSize(object_index);
	
	//TODO: draw text isometric
	if (building_size[0] > 64 || building_size[1] > 64) {
		draw_text(x + building_size[0]*.5, y + building_size[1] + 20, get_time(time_left));
	} else draw_text(x, y+52, get_time(time_left));
	
	draw_set_color(c_white);
}