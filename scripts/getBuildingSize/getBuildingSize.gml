function getBuildingSize(building_object){
	switch (building_object) {
		case oTutorialHouse	: return [64, 64];
		case oHouse			: return [64, 64];
		case oMine			: return [192, 192];
		case oBridge		: return [192, 64];
		case oBoatHouse		: return [64, 64];
		case oStorehouse	: return [128, 64];
		case oWell			: return [384, 384];
		
		case oFutureHome : return [64, 64];
		case oCubeSpinner : return [128, 128];
		case oWatchTower : return [64, 64];
	}
	
	show_debug_message(object_get_name(building_object));
}