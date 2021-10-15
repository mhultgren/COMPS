var mouse_hovering = position_meeting(mouse_x, mouse_y, id);

image_index = mouse_hovering;
image_xscale = global.zoom;
image_yscale = global.zoom;

if (mouse_hovering && mouse_check_button_pressed(mb_left)) {
	instance_destroy(oBuildingMenu);
}