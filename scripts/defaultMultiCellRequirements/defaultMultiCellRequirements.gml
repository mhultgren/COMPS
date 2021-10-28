function defaultMultiCellRequirements(cell_group){
	for (var i=0; i<ds_list_size(cell_group); i++) {
		with (cell_group[| i]) {
			if (contains_structure || contains_water) return false;
		}
	} return true;
}