global.scroll = true;
instance_destroy(oArrow);
instance_destroy(oExit);

// only call this if destroyed via exit button
if (!global.building_selected) {
	instance_destroy(oBuildingOption);
	
	global.drawCells = false;

	instance_create_layer(896, 720, "UI", oBuildingTool);
}