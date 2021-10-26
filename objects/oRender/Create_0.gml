/// @desc Build the map
/*
layer_set_visible("Map", false);

var tile_map = layer_tilemap_get_id("Map");

for (var tX = 0; tX < MAP_W; tX++) {
	for (var tY = 0; tY < MAP_H; tY++) {
		var tile_map_data = tilemap_get(tile_map, tX, tY);
		// Format: [Sprite, Z]
		var this_tile = [-1, 0];
		this_tile[TILE.SPRITE] = sTile;
		this_tile[TILE.Z] = irandom(7);
		global.map[# tX, tY] = this_tile;
	}
}
*/