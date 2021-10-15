// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function wellObjective(){
	if instance_exists(oWell) {
		with oWell {
			if (!under_construction) return true;
		}
	} return false;
}