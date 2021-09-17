var mouse_hovering = position_meeting(mouse_x, mouse_y, id);
var affordable = global.coins >= building_cost;

if (mouse_hovering) {
	if (affordable) image_index = 1;
	else image_index = 2;
} else image_index = 0;

// TODO: deduct price here
if (mouse_hovering && mouse_check_button_pressed(mb_left)) {
	if (affordable) {
		global.building_selected = true;
		global.coins -= building_cost;
		instance_destroy();
	}
}