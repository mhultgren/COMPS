if (file_exists("credits.ybx")) loadGame();
else {
	randomize();

	/*
	with instance_create_layer(x, y, "UI", oGrid) {
		row = irandom(cells_height-3);
		col = irandom(cells_width-3);
	
		with cells[row, col] {
			instance_create_layer(x-32, y-32, "Buildings", oWell);
		}
	}
	*/

	with instance_create_layer(x, y, "UI", oGrid) {
		var cell_water = (64 * irandom_range(25, cells_width-25)) + 32;
		
		instance_create_layer(cell_water, 32, "Buildings", oRiver);
	}
	instance_create_layer(x, y, "UI", oFloraGenerator);
}