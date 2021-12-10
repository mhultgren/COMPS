function firstFutureObjective(){
	var buildings_made = 0;
	
	buildings_made += instance_number(oFutureHome) + instance_number(oCubeSpinner) + instance_number(oWatchTower);

	if (buildings_made >= 3) {
		if (!array_contains(global.parameters_met, "create folder desc")) {
			array_push(global.parameters_met, "create folder desc");
			write_first_future_message();
			saveGameDefault();
		}
	}
	
	return array_contains(global.parameters_met, "turn on clock");
}