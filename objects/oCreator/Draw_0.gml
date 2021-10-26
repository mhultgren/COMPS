if (within_bounds) {
	// TODO : draw red sprite if can't build
	draw_sprite_ext(sprite, 2, tile_to_screen_x(iso_mouse_x, iso_mouse_y), tile_to_screen_y(iso_mouse_x, iso_mouse_y), 1, 1, 0, c_white, 0.5);
}