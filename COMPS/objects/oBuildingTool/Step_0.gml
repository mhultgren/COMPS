if (mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, id)) {
	instance_create_layer(128, 64, "UI", oBuildingMenu);
	global.drawCells = true;
	instance_destroy();
}