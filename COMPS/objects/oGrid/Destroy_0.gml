for (var i=0; i<cells_height; i++) {
	for (var j=0; j<cells_width; j++) {
		instance_destroy(cells[i, j]);
	}
}