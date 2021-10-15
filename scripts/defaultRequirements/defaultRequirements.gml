// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function defaultRequirements(main_cell){
	with main_cell {
		return !contains_structure && !contains_water;
	}
}