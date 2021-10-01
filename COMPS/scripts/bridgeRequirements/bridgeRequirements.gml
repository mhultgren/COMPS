// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function bridgeRequirements(cell_group){
	if (ds_list_size(cell_group) != 3) return false;
	
	with cell_group[| 0] {
		if (contains_structure || contains_water) return false;
	}
	
	with cell_group[| 1] {
		if (contains_structure || !contains_water) return false;
	}
	
	with cell_group[| 2] {
		if (contains_structure || contains_water) return false;
	}
	
	return true;
}