if (global.building_selected) {
	if (!is_multicell) {
		with instance_create_layer(x, y, "UI", oCreator) {
			building = other.building;
			sprite = other.sprite;
			amount_spent = other.building_cost;
		}
	} else {
		with instance_create_layer(x, y, "UI", oMultiCellCreator) {
			building = other.building;
			sprite = other.sprite;
			amount_spent = other.building_cost;
		}
	}
	
	instance_destroy();
}

if (first_step) {
	is_multicell = sprite_get_width(sprite) > 64;
	var unit = 64;
	
	with instance_create_layer(x-(unit * 4)*global.zoom, y, "UI", oBuildingPurchase) {
		depth = other.depth - 1;
		building = other.building;
		sprite = other.sprite;
		building_cost = other.building_cost;
	}

	with instance_create_layer(x+(unit*4)*global.zoom, y-(unit*3)*global.zoom, "UI", oBuildingTitle) {
		depth = other.depth - 1;
		building_title = other.building_title;
	}

	with instance_create_layer(x+(unit*4)*global.zoom, y+(unit*.5)*global.zoom, "UI", oBuildingDescription) {
		depth = other.depth - 1;
		building_desc = other.building_desc;
		building_flavor_text = other.building_flavor_text;
	}
	
	first_step = false;
}