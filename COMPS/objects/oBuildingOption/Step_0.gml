if (global.building_selected) {
	with instance_create_layer(x, y, "UI", oCreator) {
		building = other.building;
		sprite = other.sprite;
	}
	
	instance_destroy();
}

if (first_step) {
	var unit = 64;
	
	with instance_create_layer(x-(unit * 4), y, "UI", oBuildingPurchase) {
		depth = other.depth - 1;
		building = other.building;
		sprite = other.sprite;
		building_cost = other.building_cost;
	}

	with instance_create_layer(x+(unit*4), y-(unit*3), "UI", oBuildingTitle) {
		depth = other.depth - 1;
		building_title = other.building_title;
	}

	with instance_create_layer(x+(unit*4), y+(unit*.5), "UI", oBuildingDescription) {
		depth = other.depth - 1;
		building_desc = other.building_desc;
		building_flavor_text = other.building_flavor_text;
	}
	
	first_step = false;
}