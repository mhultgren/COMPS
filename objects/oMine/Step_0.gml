// Inherit the parent event
event_inherited();

if (!under_construction) {
	if (mouse_check_button_pressed(mb_left)) {
		var iso_mouse_x = screen_to_tile_x(mouse_x, mouse_y);
		var iso_mouse_y = screen_to_tile_y(mouse_x, mouse_y);
		
		var mine_width = sprite_width / 64;
		var mine_height = sprite_height / 64;
		
		// TODO: add gold animation here
		if (iso_mouse_x >= cell_row && iso_mouse_x < cell_row + mine_width) && (iso_mouse_y >= cell_column && iso_mouse_y < cell_column + mine_height)
			global.coins += amount_generated_on_click * instance_number(oMine);
	}
}