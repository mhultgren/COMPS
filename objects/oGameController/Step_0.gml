/*
if (keyboard_check_pressed(ord("S"))) {
	saveGameDefault();
} else if (keyboard_check_pressed(ord("L"))) {
	loadGame();
}
*/

// check if death clock is on
if (global.year >= 3015 && !check_clock && array_contains(global.parameters_met, "death clock on")) check_clock = true;

// if clock is on, activate clock if enough time has passed
if (check_clock) {
	var seconds_passed = unixTimestamp(date_current_datetime()) - global.death_clock_last_time;
	
	if (seconds_passed >= global.death_clock_time) {
		global.death_clock_last_time = global.death_clock_last_time + global.death_clock_time;
		if (instance_number(oBuilding) > 0) activateDeathClock();
	}
}