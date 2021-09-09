if (drawCells && changed) {
	for (var i=0; i<cells_height; i++) {
		for (var j=0; j<cells_width; j++) {
			with (cells[i, j]) drawCell = true;
		}
	}
	changed = false;
}

if (!drawCells && changed) {
	for (var i=0; i<cells_height; i++) {
		for (var j=0; j<cells_width; j++) {
			with (cells[i, j]) drawCell = false;
		}
	}
	changed = false;
}