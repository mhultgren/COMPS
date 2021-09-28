draw_self();

if (sprite_get_width(sprite) == 64)
	draw_sprite_ext(sprite, 2, x, y-32*global.zoom, 5*global.zoom, 5*global.zoom, 0, c_white, 1);
else
	draw_sprite_ext(sprite, 2, x-168*global.zoom, y-190*global.zoom, 2.5*global.zoom, 2.5*global.zoom, 0, c_white, 1);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text_ext_transformed(x, y+180*global.zoom, "$" + string(building_cost), 10, 100, 2*global.zoom, 2*global.zoom, 0);