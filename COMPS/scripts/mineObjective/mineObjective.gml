// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function mineObjective(){
	if (instance_exists(oMine)) {
		with oMine {
			if !(under_construction) return true;
		}
	} return false;
}