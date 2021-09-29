// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function firstObjectiveFulfilled(){
	global.scroll = false;
	with instance_create_layer(camera_get_view_x(view_camera[0]) + 364*global.zoom, camera_get_view_y(view_camera[0]) + 96*global.zoom, "UI", oDialogueBox) {
		objective = true;
		objective_name = "A Brief Wait";
		objective_fulfilled = false;
		dialogue_text = "Great work, and now the waiting starts! Thankfully, this should be done soon. Just 30 seconds...";
		add_to_toolbar = true;
		alert_index = 0;
	}
}