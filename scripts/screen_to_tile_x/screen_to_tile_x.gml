function screen_to_tile_x(_screen_x, _screen_y){
	_screen_x -= (ROOM_W * 0.5);
	_screen_y -= (ROOM_H * 0.25);
	
	return floor((_screen_x / (TILE_W * 0.5) + _screen_y / (TILE_H * 0.5)) * 0.5);
}