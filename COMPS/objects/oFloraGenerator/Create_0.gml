// TODO: make grid show below other UI elements
grid_cells = 0;
grid_cells_width = 0;
grid_cells_height = 0;


with instance_create_layer(x, y, "UI", oGrid) {
	other.grid_cells = cells;
	other.grid_cells_width = cells_width;
	other.grid_cells_height = cells_height;
}

// TODO: make well randomly generated
trees_generated = 0;

while (trees_generated < 100) {
	row = irandom(grid_cells_height-1);
	col = irandom(grid_cells_width-1);
	
	with (grid_cells[row][col]) {
		if (!contains_structure) {
			instance_create_layer(x, y, "Buildings", oTree);
			other.trees_generated++;
		}
	}
}