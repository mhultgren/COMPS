draw_self();

if (under_construction) {
	draw_set_color(c_black);
	draw_text(x, y+32, floor(time_required/room_speed));
	draw_set_color(c_white);
}