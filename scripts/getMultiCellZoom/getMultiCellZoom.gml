// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function getMultiCellZoom(building){
	var variables = [];
	
	switch (building) {
		case oWell: variables = [1, 1]; break;
		case oBridge: variables = [5/3, 5]; break;
		case oMine: variables = [5/3, 5/3]; break;
		case oStorehouse: variables = [5/2, 5]; break;
	}
	
	return variables;
}