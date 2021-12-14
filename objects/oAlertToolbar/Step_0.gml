x = camera_get_view_x(view_camera[0]) + 1280 * global.zoom;
y = camera_get_view_y(view_camera[0]) + 128 * global.zoom;

image_xscale = global.zoom;
image_yscale = global.zoom;

var new_length = array_length(alerts);

if (new_length != alerts_size) {
	instance_destroy(oAlert);
	
	// create alert objects in toolbar using references in alerts list
	for (var i=0; i<new_length; i++) {
		if (!alerts[i].objective) {
			with instance_create_layer(x/global.zoom + 48, y/global.zoom + (i+1)*64, "UI", oDialogueAlert) {
				dialogue_text = other.alerts[i].text;
				opened = other.alerts[i].opened;
				alert_index = i;
				depth = other.depth-1;
			}
		} else {
			with instance_create_layer(x/global.zoom + 48, y/global.zoom + (i+1)*64, "UI", oObjectiveAlert) {
				dialogue_text = other.alerts[i].text;
				objective_name = other.alerts[i].objective_name;
				objective_fulfilled = other.alerts[i].objective_fulfilled;
				opened = other.alerts[i].opened;
				alert_index = i;
				depth = other.depth-1;
			}
		}
	}
}

alerts_size = new_length;