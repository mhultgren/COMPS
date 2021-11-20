draw_set_color(c_white);
draw_set_alpha((fade_timer - fade_counter) / fade_timer);

fade_counter--;

draw_rectangle(0, 0, room_width, room_height, false);

draw_set_alpha(1);
draw_set_color(c_white);