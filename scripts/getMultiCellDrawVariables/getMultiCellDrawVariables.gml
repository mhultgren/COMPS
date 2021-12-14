// get x & y offsets for specific multi cell buildings
function getMultiCellDrawVariables(building){
	var variables = [];
	
	switch (building) {
		case oBridge: variables = [-76, -136]; break;
		case oStorehouse: variables = [-60, -66]; break;
		case oFutureHome: variables = [0, 32]; break;
		case oCubeSpinner: variables = [0, -96]; break;
		case oWatchTower: variables = [0, 64]; break;
	}
	
	return variables;
}