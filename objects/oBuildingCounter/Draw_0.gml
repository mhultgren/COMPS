with building {
	other.time_left = time_left;
}

if (time_left <= 0) instance_destroy();

if (global.year >= 3015) draw_set_color(c_black);

draw_text(x, y, get_time(time_left));

draw_set_color(c_white);