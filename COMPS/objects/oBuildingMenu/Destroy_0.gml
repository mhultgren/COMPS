global.scroll = true;
instance_destroy(oArrow);
instance_destroy(oExit);

// only call this if destroyed via exit button
if (!global.building_selected) {
	instance_destroy(oBuildingOption);
	
	global.drawCells = false;

	instance_create_layer(1056, 672, "UI", oBuildingTool);
}