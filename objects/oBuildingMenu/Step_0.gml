image_xscale = global.zoom;
image_yscale = global.zoom;

if (global.building_selected || max_pages <= 0) instance_destroy();
// TODO: keep grid, re-add building menu on alert close
if (mouse_check_button_pressed(mb_left) && !position_meeting(mouse_x, mouse_y, id)) instance_destroy();

if (global.current_page >= max_pages) global.current_page = 0;
else if (global.current_page < 0) global.current_page = max_pages-1;

// handle switching pages
if (menu_page != global.current_page) {
	instance_destroy(oBuildingOption);
	
	building_info = getBuildingInfo(unlocked_buildings[global.current_page]);
	
	with instance_create_layer(x + menu_width/2*global.zoom, y + menu_height/2*global.zoom, "UI", oBuildingOption) {
		building = other.building_info.building;
		sprite = other.building_info.sprite;
		building_title = other.building_info.building_title;
		building_desc = other.building_info.building_desc;
		building_cost = other.building_info.building_cost;
		depth -= 1000;
	}
	
	menu_page = global.current_page;
}