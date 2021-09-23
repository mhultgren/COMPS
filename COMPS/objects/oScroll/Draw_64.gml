if (global.scroll || zoom_to_default) {
	#region panning
	var xx = camera_get_view_x(view_camera[0]);
	var yy = camera_get_view_y(view_camera[0]);
	
	var mouse_x_gui = device_mouse_x_to_gui(0);
	var mouse_y_gui = device_mouse_y_to_gui(0);

	var left = keyboard_check(vk_left);
	var right = keyboard_check(vk_right);
	var up = keyboard_check(vk_up);
	var down = keyboard_check(vk_down);

	if (left || (mouse_x_gui >= left_edge && mouse_x_gui <= left_edge_max)) {
		xx -= view_move_amount;
	}  
	
	if (right || (mouse_x_gui <= right_edge && mouse_x_gui >= right_edge_max)) {
		xx += view_move_amount;
	}  
	
	if (up || (mouse_y_gui >= top_edge && mouse_y_gui <= top_edge_max)) {
		yy -= view_move_amount;
	}  
	
	if (down || (mouse_y_gui <= bottom_edge && mouse_y_gui >= bottom_edge_max)) {
		yy += view_move_amount;
	}

	camera_set_view_pos(view_camera[0], clamp(xx, 0, room_width-camera_get_view_width(view_camera[0])), clamp(yy, 0, room_height-camera_get_view_height(view_camera[0])));
	#endregion
	
	//TODO: scroll towards mouse position
	//TODO: handle building menu at zoom in (if necessary)
	#region zooming
	var mouse_input = mouse_wheel_down() - mouse_wheel_up();
	target_zoom = clamp(target_zoom + mouse_input*.1, 0.1, 2);
	
	global.zoom += (target_zoom - global.zoom) * zoom_spd;
	camera_set_view_size(view_camera[0], original_x_size*global.zoom, original_y_size*global.zoom);
	
	zoom_to_default = global.zoom == 1;
	#endregion
}