function firstFutureObjective(){
	var buildings_made = 0;
	
	buildings_made += instance_number(oFuturePlaceholderOne) + instance_number(oFuturePlaceholderTwo) + instance_number(oFuturePlaceholderThree) + instance_number(oFuturePlaceholderFour);

	if (buildings_made >= 3) {
		// TODO: create file in folder
		if (!array_contains(global.parameters_met, "create folder desc")) {
			array_push(global.parameters_met, "create folder desc");
			writeFirstFutureMessage();
			saveGameDefault();
		}
	}
	
	return array_contains(global.parameters_met, "turn on clock");
}