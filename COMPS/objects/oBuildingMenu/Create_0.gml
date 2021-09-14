unlocked_buildings = getUnlockedBuildings();

max_pages = array_length(unlocked_buildings);
menu_page = global.current_page;

building_info = getBuildingInfo(unlocked_buildings[global.current_page]);

with instance_create_layer(x + 416, y + 544, "UI", oArrow)  {
	depth = other.depth - 1;
	rotate = true;
}
with instance_create_layer(x + 672, y + 544, "UI", oArrow) depth = other.depth - 1;

with instance_create_layer(x + 1056, y + 32, "UI", oExit) depth = other.depth - 1; 

with instance_create_layer(x + sprite_width/2, y + sprite_height/2, "UI", oBuildingOption) {
	building = other.building_info.building;
	sprite = other.building_info.sprite;
	building_title = other.building_info.building_title;
	building_desc = other.building_info.building_desc;
	building_cost = other.building_info.building_cost;
	depth -= 1000;
}