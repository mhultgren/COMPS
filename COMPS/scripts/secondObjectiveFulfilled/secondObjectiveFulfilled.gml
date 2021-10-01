// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function secondObjectiveFulfilled(){
	global.scroll = false;
	
	with instance_create_layer(camera_get_view_x(view_camera[0]) + 364*global.zoom, camera_get_view_y(view_camera[0]) + 96*global.zoom, "UI", oDialogueBox) {
		objective = false;
		dialogue_text = "Nice work! Now if only we had more gold...";
		alert_index = 0;
		add_to_toolbar = true;
	}

	with oAlertToolbar {
		var new_objective = {
			objective : true,
			text : "With the first steps complete, we're on our way to having a full fledged society on our hands! But we need a better way to make money, something faster.. How about you build a mine next?\n\nObjective: Build a mine",
			objective_name : "Mine and yours",
			objective_fulfilled : false,
			opened : false,
		};
		
		array_push(alerts, new_objective);
		array_push(global.parameters_met, "second objective met");
	}
}