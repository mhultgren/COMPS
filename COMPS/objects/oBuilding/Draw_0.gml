draw_self();

if (under_construction) {
	draw_set_color(c_black);
	
	if (sprite_width > 64 || sprite_height > 64) {
		draw_text(x + sprite_width*.5, y + sprite_height + 20, get_time(time_left));
	} else draw_text(x, y+52, get_time(time_left));
	
	draw_set_color(c_white);
} else if (generates_gold) {
	draw_set_color(c_black);
	draw_text(x, y+32, floor(time_left));
	draw_set_color(c_white);
}