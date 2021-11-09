function firstFutureObjectiveFulfilled(){
	// TODO: remove "create folder desc" from parameters_met
	global.scroll = false;
	
	with instance_create_layer(camera_get_view_x(view_camera[0]) + 364*global.zoom, camera_get_view_y(view_camera[0]) + 96*global.zoom, "UI", oDialogueBox) {
		objective = false;
		dialogue_text = "PLACEHOLDER TEXT: FUCK YOU BUDDY. THE DEATH CLOCK IS ON. DON'T COME BACK HERE.";
		alert_index = 0;
		add_to_toolbar = false;
		destroy_on_close = true;
	}
	
	instance_create_layer(x, y, "UI", oTimeBomb);
}