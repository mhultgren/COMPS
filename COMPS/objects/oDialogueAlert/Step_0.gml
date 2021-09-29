image_xscale = global.zoom;
image_yscale = global.zoom;
x = camera_get_view_x(view_camera[0]) + alert_x * global.zoom;
y = camera_get_view_y(view_camera[0]) + alert_y * global.zoom;
var mouse_hovering = position_meeting(mouse_x, mouse_y, id);

image_index = !opened;

if (mouse_hovering) {
	image_index = 2;
	
	if (mouse_check_button_pressed(mb_left)) {
		global.scroll = false;
	
		with instance_create_layer(camera_get_view_x(view_camera[0]) + 364*global.zoom, camera_get_view_y(view_camera[0]) + 96*global.zoom, "UI", oDialogueBox) {
			objective = false;
			opened = true;
			dialogue_text = other.dialogue_text;
			alert_index = other.alert_index;
		}
	} else if (mouse_check_button_pressed(mb_right) && opened) {
		with oAlertToolbar {
			array_delete(alerts, other.alert_index, 1);
		}
		
		saveGameDefault();
		
		instance_destroy();
	}
}

visible = true;