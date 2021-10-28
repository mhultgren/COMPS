var room_x, room_y;

for (var tX=0; tX<global.cells_height; tX++) {
	for (var tY=0; tY<global.cells_width; tY++) {
		room_x = tile_to_screen_x(tX+1, tY+1);
		room_y = tile_to_screen_y(tX+1, tY+1);
		
		with (global.cells[tX, tY]) {
			cell_row = tX;
			cell_column = tY;
			
			// TODO: make separate terrain variable, to keep water / dirt / etc. despite object contained
			if (terrain = "grass") draw_sprite(sTile, 0, room_x, room_y);
			else if (terrain = "water") draw_sprite(sWaterTile, 0, room_x, room_y);
			
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
			// TODO: get sprite subimage
			// TODO: multi cell creation, drawing
			if (cell_group) {
				if (ds_list_find_index(other.multicells, object_id) == -1) {
					with object_id {
						cell_row = tX;
						cell_column = tY;
					}
					
					draw_sprite(get_iso_sprite(object_id), get_iso_sprite_subimg(object_id), room_x, room_y);
					ds_list_add(other.multicells, object_id);
				}
			} else if (contains_structure || contains_flora) {
				draw_sprite(get_iso_sprite(object_id), get_iso_sprite_subimg(object_id), room_x, room_y);
			}
		}
	}
}