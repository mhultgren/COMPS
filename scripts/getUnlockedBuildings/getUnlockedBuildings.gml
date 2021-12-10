// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function getUnlockedBuildings(){
	var returned_buildings = [];
	
	if (global.year < 3015) {
		if (!instance_exists(oTutorialHouse)) return [oTutorialHouse]; 
		with oTutorialHouse {
			if (under_construction) return [];
		}
	
		if (array_contains(global.parameters_met, "tutorial alert sent")) array_push(returned_buildings, oHouse);
		if (array_contains(global.parameters_met, "second objective met")) array_push(returned_buildings, oMine);
		if (array_contains(global.parameters_met, "mine objective met")) array_push(returned_buildings, oBoatHouse, oStorehouse, oBridge);
		if (array_contains(global.parameters_met, "five structures objective met") && !instance_exists(oWell)) array_push(returned_buildings, oWell);
	} else {
		if (!array_contains(global.parameters_met, "game over")) {
			returned_buildings = [oFutureHome, oCubeSpinner, oWatchTower];
			if (array_contains(global.parameters_met, "death clock on")) returned_buildings = [];
		} else {
			returned_buildings = [oHouse, oMine, oBoatHouse, oStorehouse, oBridge, oWell, oFutureHome, oCubeSpinner, oWatchTower];
		}
	}
	return returned_buildings;
}