draw_set_alpha(0.5);
	
with (instance_nearest(mouse_x, mouse_y, oCell)) {
	draw_sprite(other.sprite, 2, x, y);
}
	
draw_set_alpha(1);