draw_self();

draw_sprite_ext(building_sprite, 2, x, y, 0.75, 0.75, 0, c_white, 1);

if (selected) {
	draw_set_alpha(0.5);
	
	with (instance_nearest(mouse_x, mouse_y, oCell)) {
		draw_sprite(other.building_sprite, 2, x, y);
	}
	
	draw_set_alpha(1);
}