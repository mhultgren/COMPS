if (global.building_selected) {
	with instance_create_layer(x, y, "UI", oCreator) {
		building = other.building;
		sprite = other.sprite;
		building_title = other.building_title;
		building_desc = other.building_desc;
		building_flavor_text = other.building_flavor_text;
		building_cost = other.building_cost;
		current_page = other.current_page;
	}
	
	instance_destroy();
}