alarm[0] = room_speed*60;

if (check_clock && !array_contains(global.parameters_met, "game crashed")) {
	var random_crash = irandom(19);
	
	if (random_crash == 0) {
		array_push(global.parameters_met, "game crashed");
		saveGameDefault();
		game_end();
	}
}