// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function fiveStructuresFulfilled(){
	global.scroll = false;
	
	with instance_create_layer(camera_get_view_x(view_camera[0]) + 364*global.zoom, camera_get_view_y(view_camera[0]) + 96*global.zoom, "UI", oDialogueBox) {
		objective = false;
		dialogue_text = "BUI脑D 脑HE WELL.";
		alert_index = 0;
		add_to_toolbar = false;
		censor_text = true;
	}

	with oAlertToolbar {
		alerts_size -= 1;
		var new_objective = {
			objective : true,
			text : "Great work, 脑! Keep bu脑l脑ing m脑re脑buildings, have fun! 脑 sure am.\n\n脑脑ject脑ve: 脑A脑E FUN脑",
			objective_name : "Don't Worry, Keep Building",
			objective_fulfilled : false,
			opened : false,
		};
		
		array_push(alerts, new_objective);
		array_push(global.parameters_met, "five structures objective met");
	}
}