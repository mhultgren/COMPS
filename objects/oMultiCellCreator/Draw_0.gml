if (within_bounds) {
	draw_set_alpha(0.5);
	
	draw_sprite(sprite, 2, tile_to_screen_x(iso_mouse_x, iso_mouse_y), tile_to_screen_y(iso_mouse_x, iso_mouse_y));
	
	draw_set_alpha(1);
}