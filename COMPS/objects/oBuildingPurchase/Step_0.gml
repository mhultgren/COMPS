var mouse_hovering = position_meeting(mouse_x, mouse_y, id);

image_index = mouse_hovering;

// TODO: deduct price here
if (mouse_check_button_pressed(mb_left) && mouse_hovering) {
	global.building_selected = true;
	
	instance_destroy();
}