global.cells = 0;

for (var i=32; i <= room_width - 32; i+=64) {
	for (var j=32; j <= room_height - 32; j+=64) {
		with instance_create_layer(i, j, "Grid", oCell) {
			depth = other.depth - i - j;
			global.cells[(i-32)/64, (j-32)/64] = id;
			cell_row = (i-32)/64;
			cell_column = (j-32)/64;
		}
	}
}

global.cells_height = array_length(global.cells);
global.cells_width = array_length(global.cells[0]);

// keep track of all multicell objects using this ds list,
// so they aren't drawn multiple times for each cell
multicells = ds_list_create();