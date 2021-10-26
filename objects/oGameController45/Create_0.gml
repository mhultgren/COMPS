draw_set_font(fMain);

randomize();
global.coins = 50;
global.year = 945;
global.population = 0;
global.parameters_met = [];
	
if (os_type == os_windows) global.name = environment_get_variable("USERNAME");
if (os_type == os_macosx) global.name = environment_get_variable("USER");

with instance_create_layer(x, y, "Grid", oGrid) {
	var cell_water = (64 * irandom_range(25, global.cells_width-25)) + 32;
		
	instance_create_layer(cell_water, 32, "Water", oRiver);
}

//instance_create_layer(x, y, "UI", oFloraGenerator);