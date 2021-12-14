function getMultiCellZoom(building){
	var variables = [];
	
	switch (building) {
		case oWell: variables = [1, 1]; break;
		case oBridge: variables = [5/3, 5]; break;
		case oMine: variables = [5/3, 5/3]; break;
		case oStorehouse: variables = [5/2, 5]; break;
		case oWatchTower: variables = [5, 5/2]; break;
		case oFutureHome: variables = [5, 5/1.5]; break;
		case oCubeSpinner: variables = [5/2, 5/2]; break;
	}
	
	return variables;
}