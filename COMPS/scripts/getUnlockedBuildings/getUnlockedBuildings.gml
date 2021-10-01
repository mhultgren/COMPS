// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function getUnlockedBuildings(){
	if (!instance_exists(oTutorialHouse)) return [oTutorialHouse]; 
	with oTutorialHouse {
		if (under_construction) return [];
	}
	
	var returned_buildings = [];
	
	if (array_contains(global.parameters_met, "tutorial alert sent")) array_push(returned_buildings, oHouse);
	if (array_contains(global.parameters_met, "second objective met")) array_push(returned_buildings, oMine);
	if (array_contains(global.parameters_met, "mine objective met")) array_push(returned_buildings, oBoatHouse, oStorehouse, oBridge);
	if (array_contains(global.parameters_met, "five structures objective met") && !instance_exists(oWell)) returned_buildings = [oWell];
	
	return returned_buildings;
}