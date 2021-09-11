randomise();

with instance_create_layer(x, y, "UI", oGrid) {
	row = irandom(cells_height-3);
	col = irandom(cells_width-3);
	
	with cells[row, col] {
		instance_create_layer(x-32, y-32, "Buildings", oWell);
	}
}

instance_create_layer(x, y, "UI", oFloraGenerator);