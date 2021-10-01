// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function getUnlockedBuildings(){
	if (!instance_exists(oTutorialHouse)) return [oTutorialHouse]; 
	with oTutorialHouse {
		if (under_construction) return [];
	}
	return [oHouse, oBridge, oMine, oBoatHouse, oStorehouse];
}