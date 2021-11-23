// check if death clock is on
if (global.year >= 3015 && !check_clock && array_contains(global.parameters_met, "death clock on") && !array_contains(global.parameters_met, "game over")) check_clock = true;

// if clock is on, activate clock if enough time has passed
if (check_clock) {
	if (instance_number(oBuilding) == 0) {
		global.death_clock_last_time = unixTimestamp(date_current_datetime());
	}
	
	var seconds_passed = unixTimestamp(date_current_datetime()) - global.death_clock_last_time;
	
	if (seconds_passed >= global.death_clock_time) {
		global.death_clock_last_time = global.death_clock_last_time + global.death_clock_time;
		global.death_clock_time = global.death_clock_time * 2;
		if (instance_number(oBuilding) > 0) activate_death_clock();
	}
}