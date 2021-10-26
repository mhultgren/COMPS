trees_generated = 0;

// generate 400 trees in different spots on the map
while (trees_generated < 400) {
	row = irandom(global.cells_height-1);
	col = irandom(global.cells_width-1);
	
	with (global.cells[row][col]) {
		if (!place_meeting(x, y, oStructure) && !place_meeting(x, y, oFlora) && !place_meeting(x, y, oWater) && !cell_group) {
			
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