var room_x, room_y;

for (var tX=0; tX<global.cells_height; tX++) {
	for (var tY=0; tY<global.cells_width; tY++) {
		// get position of isometric tile using position within grid
		room_x = tile_to_screen_x(tX+1, tY+1);
		room_y = tile_to_screen_y(tX+1, tY+1);
		
		// use cell reference to draw the cell on screen
		with (global.cells[tX, tY]) {
			cell_row = tX;
			cell_column = tY;
			
			if (terrain = "grass") {
				if (global.year < 3015) draw_sprite(sTile, 0, room_x, room_y);
				else draw_sprite(sTile, 2, room_x, room_y);
			}
			else if (terrain = "water") draw_sprite(sWaterTile, 0, room_x, room_y);
			else if (terrain = "void") draw_sprite(sVoidTile, 0, room_x, room_y);
			
			// draw cell dividing lines if player is placing a building
			if (global.drawCells) draw_sprite(sprite_index, image_index, room_x, room_y);
		}
	}
}

ds_list_clear(multicells);

for (var tX=0; tX<global.cells_height; tX++) {
	for (var tY=0; tY<global.cells_width; tY++) {
		room_x = tile_to_screen_x(tX, tY);
		room_y = tile_to_screen_y(tX, tY);
		
		with (global.cells[tX, tY]) {
			if (cell_group != -1 && object_id != -1) {
				if (instance_exists(object_id) && ds_list_find_index(other.multicells, object_id) == -1) {
					with object_id {
						cell_row = tX;
						cell_column = tY;
					}
					draw_set_alpha(get_building_alpha(object_id));
					draw_sprite(get_iso_sprite(object_id), get_iso_sprite_subimg(object_id), room_x, room_y);
					draw_set_alpha(1);
					ds_list_add(other.multicells, object_id);
				}
			} else if (contains_structure || contains_flora) {
				draw_set_alpha(get_building_alpha(object_id));
				draw_sprite(get_iso_sprite(object_id), get_iso_sprite_subimg(object_id), room_x, room_y);
				draw_set_alpha(1);
			}
		}
	}
}