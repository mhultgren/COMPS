if (rotate) {
	draw_sprite_ext(sArrow, image_index, x, y, global.zoom, global.zoom, 180, c_white, 1);
}
else draw_sprite_ext(sArrow, image_index, x, y, global.zoom, global.zoom, 0, c_white, 1);