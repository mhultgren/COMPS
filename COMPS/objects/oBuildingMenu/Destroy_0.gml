instance_destroy(oArrow);
instance_destroy(oExit);

// only call this if destroyed via exit button
if (!global.building_selected) {
	instance_destroy(oBuildingOption);
	
	global.drawCells = false;

	with (instance_nearest(x, y, oBuildingTool)) {
		selected = false;
		image_index = 0;
		global.building_selected = false;
	}
}