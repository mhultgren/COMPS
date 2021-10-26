if (global.scroll) {
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

	// clamp(xx, 0, room_width-camera_get_view_width(view_camera[0]))
	// clamp(yy, 0, room_height-camera_get_view_height(view_camera[0]))

	camera_set_view_pos(view_camera[0], xx, yy);
	#endregion
	
	//TODO: scroll towards mouse position
	#region zooming
	var mouse_input = mouse_wheel_down() - mouse_wheel_up();
	
	if (keyboard_check(189) || keyboard_check(ord("_"))) mouse_input += .25;
	if (keyboard_check(187) || keyboard_check(ord("+"))) mouse_input -= .25;
	
	if (mouse_input < 0 && abs(target_zoom - global.zoom) < 0.04) {
		zoom_x = mouse_x;
		zoom_y = mouse_y;
	}
	
	target_zoom = clamp(target_zoom + mouse_input*.2, 1, 2);
	
	if (target_zoom != global.zoom) {
		global.zoom += (target_zoom - global.zoom) * zoom_spd;
		camera_set_view_pos(view_camera[0], clamp(zoom_x - original_x_size*global.zoom/2, 0, room_width-original_x_size*global.zoom), clamp(zoom_y - original_y_size*global.zoom/2, 0, room_height-original_y_size*global.zoom));
		camera_set_view_size(view_camera[0], original_x_size*global.zoom, original_y_size*global.zoom);
	}
	#endregion
}