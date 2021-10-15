// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function meetsRequirements(building_object_index, main_cell, cell_group){
	switch (building_object_index) {
		// single cell
		case oBoatHouse: return boatHouseRequirements(main_cell);
		
		// multi cell
		case oBridge: return bridgeRequirements(cell_group);
		case oMine : return defaultMultiCellRequirements(cell_group);
		case oWell: return defaultMultiCellRequirements(cell_group);
		case oStorehouse: return defaultMultiCellRequirements(cell_group);
		
		default: return defaultRequirements(main_cell);
	}
}