// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function getMultiCellDrawVariables(building){
	var variables = [];
	
	switch (building) {
		case oWell: variables = [-168, -190, 2.5]; break;
		case oBridge: variables = [-188, -98, 2]; break;
		case oMine: variables = [-148, -183, 1.5]; break;
		case oStorehouse: variables = [-188, -114, 3]; break;
	}
	
	return variables;
}