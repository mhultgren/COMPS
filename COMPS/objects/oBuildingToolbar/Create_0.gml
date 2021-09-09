// TODO: create array of unlocked building types to tell how many to draw
with instance_create_layer(x + 64, y - 48, "UI", oBuildingOption) {
	building = oTestBuilding;
	building_sprite = sTestBuilding;
	depth -= 1000;
}