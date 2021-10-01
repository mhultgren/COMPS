// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function mineObjectiveFulfilled(){
	global.scroll = false;
	
	with instance_create_layer(camera_get_view_x(view_camera[0]) + 364*global.zoom, camera_get_view_y(view_camera[0]) + 96*global.zoom, "UI", oDialogueBox) {
		objective = false;
		// TODO: change money / coins to gold
		dialogue_text = "Amazing! We now have a working mine! While this mine will generate gold passively over time, you also have the ability to directly extract gold on your own. Try clicking the mine, and see your gold increase with each click.";
		alert_index = 0;
		add_to_toolbar = true;
	}

	with oAlertToolbar {
		
		var new_objective = {
			objective : true,
			text : "What does every good community have in common? That's right! Eight structures or more, and a bridge too! No better time than the present to start building up this little community. Get to buying, we'll get to building.\n\nObjective: Build five new structures, and a bridge!",
			objective_name : "Five structures and a bridge",
			objective_fulfilled : false,
			opened : false,
		};
		
		array_push(alerts, new_objective);
		array_push(global.parameters_met, "mine objective met");
	}
}