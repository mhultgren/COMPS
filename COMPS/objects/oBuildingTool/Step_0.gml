x = camera_get_view_x(view_camera[0]) + 1056 * global.zoom;
y = camera_get_view_y(view_camera[0]) + 672 * global.zoom;

image_xscale = global.zoom;
image_yscale = global.zoom;

if (mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, id)) {
	if (global.zoom < 1) {
		with (oScroll) {
			global.zoom = 1;
		}
	}
	
	instance_create_layer((camera_get_view_x(view_camera[0]) + 128) * global.zoom, (camera_get_view_y(view_camera[0]) + 64) * global.zoom, "UI", oBuildingMenu);
	global.drawCells = true;
	instance_destroy();
}