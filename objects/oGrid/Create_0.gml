cells = 0;

for (var i=32; i <= room_width + 32; i+=64) {
	for (var j=32; j <= room_height + 32; j+=64) {
		with instance_create_layer(i, j, "Buildings", oCell) {
			other.cells[(i-32)/64, (j-32)/64] = id;
		}
	}
}

cells_height = array_length(cells)
cells_width = array_length(cells[0])