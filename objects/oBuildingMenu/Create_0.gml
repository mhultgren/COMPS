// used for holding all available buildings,
// user can page through menu to select a building to create
// each page holds its own oBuildingOption
global.scroll = false;
unlocked_buildings = getUnlockedBuildings();

max_pages = array_length(unlocked_buildings);
menu_page = clamp(global.current_page, 0, max_pages-1);

menu_width = sprite_width;
menu_height = sprite_height;

if (max_pages > 0) {
	building_info = getBuildingInfo(unlocked_buildings[menu_page]);
	
	with instance_create_layer(x + 416*global.zoom, y + 544*global.zoom, "UI", oArrow)  {
		depth = other.depth - 1;
		rotate = true;
	}
	
	with instance_create_layer(x + 672*global.zoom, y + 544*global.zoom, "UI", oArrow) depth = other.depth - 1;

	with instance_create_layer(x + 1056*global.zoom, y + 32*global.zoom, "UI", oExit) depth = other.depth - 1; 

	with instance_create_layer(x + sprite_width/2*global.zoom, y + sprite_height/2*global.zoom, "UI", oBuildingOption) {
		building = other.building_info.building;
		sprite = other.building_info.sprite;
		building_title = other.building_info.building_title;
		building_desc = other.building_info.building_desc;
		building_cost = other.building_info.building_cost;
		depth -= 1000;
	}
} else instance_destroy();