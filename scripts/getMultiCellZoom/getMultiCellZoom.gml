// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
// TODO: combine both multicell fn's

function getMultiCellZoom(building){
	var variables = [];
	
	switch (building) {
		case oWell: variables = [1, 1]; break;
		case oBridge: variables = [5/3, 5]; break;
		case oMine: variables = [5/3, 5/3]; break;
		case oStorehouse: variables = [5/2, 5]; break;
		case oWatchTower: variables = [5, 5/2]; break;
	}
	
	return variables;
}