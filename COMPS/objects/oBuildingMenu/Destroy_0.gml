instance_destroy(oArrow);
instance_destroy(oExit);

if (!global.building_selected) {
	instance_destroy(oBuildingOption);
	
	with (instance_nearest(x, y, oGrid)) {
		drawCells = false;
		changed = true;
	}

	with (instance_nearest(x, y, oBuildingTool)) {
		selected = false;
		image_index = 0;
		global.building_selected = false;
	}
}