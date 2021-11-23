with building {
	other.time_left = time_left;
}

if (time_left <= 0) instance_destroy();

draw_text(x, y, get_time(time_left));