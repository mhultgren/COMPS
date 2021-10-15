// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function secondObjective(){
	if (instance_exists(oHouse)) {
		with (oHouse) {
			if (!under_construction) return true;
		}
	} return false;
}