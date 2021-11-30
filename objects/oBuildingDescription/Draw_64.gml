// TODO: enable scrolling descriptions
if (first_step && array_contains(global.parameters_met, "create folder desc")) {
	first_step = false;
	
	if (!array_contains(global.parameters_met, "death clock on")) {
		building_desc = "check the folder check the folder check the folder check the folder check the folder check the folder check the folder check the folder check the folder check the folder check the folder check the folder check the folder check the folder check the folder check the folder check the folder check the folder check the folder check the folder check the folder check the folder check the folder check the folder check the folder check the folder ";	
	} else if (!array_contains(global.parameters_met, "game over")){
		var random_name = irandom(4);
		if (random_name == 0) {
			building_desc = global.name + " " + global.name + " " + global.name + " " + global.name + " " + global.name + " " + global.name + " " + global.name + " " + global.name + " " + global.name + " " + global.name + " " + global.name + " " + global.name + " " + global.name + " " + global.name + " " + global.name + " " + global.name + " " + global.name + " " + global.name + " " + global.name + " " + global.name + " " + global.name + " " + global.name + " " + global.name;
		}
	}
}

draw_set_halign(fa_center);
draw_set_valign(fa_top);

draw_text_ext_transformed(928, 205, building_desc, 21, 307, 1.3, 1.3, 0);