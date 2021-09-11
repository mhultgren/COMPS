// TODO: create array of unlocked building types to tell how many to draw

// get list of unlocked buildings,
// depending on page number, create different building option

// create page number and arrows for navigation here

with instance_create_layer(x + sprite_width/2, y + sprite_height/2, "UI", oBuildingOption) {
	building = oTestBuilding;
	sprite = sTestBuilding;
	depth -= 1000;
}