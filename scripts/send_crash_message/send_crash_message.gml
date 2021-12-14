function send_crash_message(){
	global.scroll = false;
	
	with instance_create_layer(camera_get_view_x(view_camera[0]) + 364*global.zoom, camera_get_view_y(view_camera[0]) + 96*global.zoom, "UI", oDialogueBox) {
		objective = false;
		dialogue_text = "Why do you keep coming back? I won't make this enjoyable, not for you, not for anyone.";
		alert_index = 0;
		add_to_toolbar = false;
		destroy_on_close = true;
	}
}