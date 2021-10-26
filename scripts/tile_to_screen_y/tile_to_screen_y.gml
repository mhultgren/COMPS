function tile_to_screen_y(_tX, _tY) {
	return ((_tX + _tY) * (TILE_H * 0.5)) + (ROOM_H * 0.25);
}