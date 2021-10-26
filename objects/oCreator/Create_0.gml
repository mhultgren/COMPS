building = 0;
sprite = 0;

iso_mouse_x = screen_to_tile_x(mouse_x, mouse_y);
iso_mouse_y = screen_to_tile_y(mouse_x, mouse_y);

within_bounds = (iso_mouse_x >= 0 && iso_mouse_x < global.cells_height) && (iso_mouse_y >= 0 && iso_mouse_y < global.cells_width);