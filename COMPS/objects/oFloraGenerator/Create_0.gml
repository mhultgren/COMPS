// TODO: make grid show below other UI elements
grid_cells = 0;
grid_cells_width = 0;
grid_cells_height = 0;


with instance_nearest(x, y, oGrid) {
	other.grid_cells = cells;
	other.grid_cells_width = cells_width;
	other.grid_cells_height = cells_height;
}

trees_generated = 0;

// generate 100 trees in different spots on the map
while (trees_generated < 100) {
	row = irandom(grid_cells_height-1);
	col = irandom(grid_cells_width-1);
	
	with (grid_cells[row][col]) {
		if (!place_meeting(x, y, oStructure) && !place_meeting(x, y, oFlora) && !cell_group) {
			
			var _addedId = 0;
			with instance_create_layer(x, y, "Buildings", oTree) {
				_addedId = id;
			}
			
			object_contained = oTree;
			object_id = _addedId;
			
			other.trees_generated++;
		}
	}
}