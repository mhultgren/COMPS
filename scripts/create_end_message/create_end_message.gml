function create_end_message(){
	global.scroll = false;
	
	with instance_create_layer(camera_get_view_x(view_camera[0]) + 364*global.zoom, camera_get_view_y(view_camera[0]) + 96*global.zoom, "UI", oDialogueBox) {
		objective = false;
		dialogue_text = "PLACEHOLDER TEXT: Game over";
		alert_index = 0;
		add_to_toolbar = true;
	}
	
	var _string = 
	@"PLACEHOLDER TEXT: Last message from people.
	";
	
	var _buffer = buffer_create(string_byte_length(_string) + 1, buffer_fixed, 1);
	buffer_write(_buffer, buffer_string, _string);
	buffer_save(_buffer, "placeholder_name.txt");
	buffer_delete(_buffer);
}