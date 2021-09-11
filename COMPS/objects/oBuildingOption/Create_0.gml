selected = false;
building = oTestBuilding;
sprite = sTestBuilding;
building_title = "title";
building_desc = "description";
building_flavor_text = "mescription";
building_cost = 12;
current_page = 0;

var unit = 64;

// how to assign these after creation?

with instance_create_layer(x-(unit * 4), y, "UI", oBuildingPurchase) {
	depth = other.depth - 1;
	building = other.building;
	sprite = other.sprite;
	building_cost = other.building_cost;
}

with instance_create_layer(x+(unit*4.5), y, "UI", oBuildingDescription) {
	building_title = other.building_title;
	building_desc = other.building_desc;
	building_flavor_text = other.building_flavor_text;
}