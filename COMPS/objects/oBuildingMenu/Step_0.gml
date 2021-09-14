if (global.building_selected) instance_destroy();

if (global.current_page >= max_pages) global.current_page = 0;
else if (global.current_page < 0) global.current_page = max_pages-1;

// handle switching pages
if (menu_page != global.current_page) {
	instance_destroy(oBuildingOption);
	
	building_info = getBuildingInfo(unlocked_buildings[global.current_page]);
	
	with instance_create_layer(x + sprite_width/2, y + sprite_height/2, "UI", oBuildingOption) {
		building = other.building_info.building;
		sprite = other.building_info.sprite;
		building_title = other.building_info.building_title;
		building_desc = other.building_info.building_desc;
		building_cost = other.building_info.building_cost;
		depth -= 1000;
	}
	
	menu_page = global.current_page;
}