with oAlertToolbar {
	alerts_size--;
	var new_objective = {
		objective : true,
		text : "PLACEHOLDER TEXT: WELCOME TO THE DEATH CLOCK.",
		objective_name : "Tick Tock",
		objective_fulfilled : false,
		opened : false,
	};
		
	array_push(alerts, new_objective);
}

global.death_clock_last_time = unixTimestamp(date_current_datetime());
global.death_clock_time = 60;
array_push(global.parameters_met, "death clock on");

saveGameDefault();
game_end();