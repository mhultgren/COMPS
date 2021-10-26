/// @desc Render game
/*
var tile_data, room_x, room_y, tile_index, tile_z;

for (var tX = 0; tX < MAP_W; tX++) {
	for (var tY = 0; tY < MAP_H; tY++) {
		tile_data = global.map[# tX, tY];
		room_x = tile_to_screen_x(tX, tY);
		room_y = tile_to_screen_y(tX, tY);
		
		tile_index = tile_data[TILE.SPRITE];
		tile_z = tile_data[TILE.Z];
		
		if (screen_to_tile_x(mouse_x, mouse_y) == tX) && (screen_to_tile_y(mouse_x, mouse_y) == tY) {
			tile_index = 2;
			tile_z += 2;
		}
		
		if (tile_index != 0) draw_sprite(sTile, tile_index-1, room_x, room_y + tile_z);
	}
}
*/

var room_x, room_y;

for (var tX = 0; tX < MAP_W; tX++) {
	for (var tY = 0; tY < MAP_H; tY++) {
		var draw_grass_tile = false;
		
		with (position_meeting(tX, tY, oCell)) {
			draw_grass_tile = !contains_water;
		}
		
		room_x = tile_to_screen_x(tX, tY);
		room_y = tile_to_screen_y(tX, tY);
		tile_index = 0;
		
		if (screen_to_tile_x(mouse_x, mouse_y) == tX) && (screen_to_tile_y(mouse_x, mouse_y) == tY) {
			tile_index = 1;
		}
		
		// TODO: get correct tile sprite from separate script
		if (draw_grass_tile) draw_sprite(sTile, tile_index, room_x, room_y);
		else draw_sprite(sWaterTile, 0, room_x, room_y);
	}
}