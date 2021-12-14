draw_self();

if (sprite_get_width(sprite) == 64 && sprite_get_height(sprite) == 64)
	draw_sprite_ext(sprite, 2, x, y-32*global.zoom, 5*global.zoom, 5*global.zoom, 0, c_white, 1);
else {
	if (array_length(dimens) == 0) {
		coords = getMultiCellDrawVariables(building);
		dimens = getMultiCellZoom(building);
	}
	
	if (array_length(dimens) != 0) {
		if (array_length(coords) == 0) draw_sprite_ext(sprite, 2, x, y-32*global.zoom, dimens[0]*global.zoom, dimens[1]*global.zoom, 0, c_white, 1);
		else draw_sprite_ext(sprite, 2, x+coords[0]*global.zoom, y+coords[1]*global.zoom, dimens[0]*global.zoom, dimens[1]*global.zoom, 0, c_white, 1)
	}
}

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text_ext_transformed(x, y+180*global.zoom, string(floor(building_cost)) + " gold", 10, 100, 2*global.zoom, 2*global.zoom, 0);