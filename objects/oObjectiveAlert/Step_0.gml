image_xscale = global.zoom;
image_yscale = global.zoom;
x = camera_get_view_x(view_camera[0]) + alert_x * global.zoom;
y = camera_get_view_y(view_camera[0]) + alert_y * global.zoom;
var mouse_hovering = position_meeting(mouse_x, mouse_y, id);

image_index = !opened;

if (!objective_fulfilled) {
	objective_fulfilled = getObjectiveDependency(objective_name);
} else {
	sprite_index = sObjectiveAlertFulfilled;
}

if (mouse_hovering) {
	image_index = 2;
	
	if (mouse_check_button_pressed(mb_left)) {
		if (objective_fulfilled) {
			launchObjectiveFulfillmentAction(objective_name);
			
			with oAlertToolbar {
				array_delete(alerts, other.alert_index, 1);
			}
			
			instance_destroy();
		} else {
			global.scroll = false;
			
			opened = true;
	
			with instance_create_layer(camera_get_view_x(view_camera[0]) + 364*global.zoom, camera_get_view_y(view_camera[0]) + 96*global.zoom, "UI", oDialogueBox) {
				objective = true;
				objective_fulfilled = other.objective_fulfilled;
				objective_name = other.objective_name;
				dialogue_text = other.dialogue_text;
				alert_index = other.alert_index;
			}
		}
	}
}

visible = true;