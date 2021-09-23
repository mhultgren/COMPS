buffer = 80;
left_edge = 0;
left_edge_max = left_edge + buffer;
right_edge = display_get_gui_width();
right_edge_max = right_edge - buffer;
top_edge = 0;
top_edge_max = top_edge + buffer;
bottom_edge = top_edge + display_get_gui_height();
bottom_edge_max = bottom_edge - buffer;

view_move_amount = 8;

original_x_size = display_get_gui_width();
original_y_size = display_get_gui_height();
global.zoom = 1;
target_zoom = global.zoom;
zoom_spd = 0.1;
zoom_x = room_width / 2;
zoom_y = room_width / 2;