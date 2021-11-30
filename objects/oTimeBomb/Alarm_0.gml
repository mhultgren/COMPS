with oAlertToolbar {
	alerts_size--;
	var new_objective = {
		objective : true,
		text : "I gave you simple instructions.\nEnjoy the game (one you received free of charge I might add), get to building (something you were all too happy to do before), and don't try ANYTHING I don't explicitly allow.\nYou couldn't listen, could you? And now I have to do this.\nOne by one, step by step, this little happy community you have created will be voided. You may have seen its effects already. If you leave the game, or maybe if I just feel like it, a building will be lost. I'm saving your friend for last, but their time will come soon.\nYou had a simple choice: follow my simple instructions, or stray and pay the consequences.\nYou chose wrong.\n\nObjective: Suffer.",
		objective_name : "Tick Tock",
		objective_fulfilled : false,
		opened : false,
	};
		
	array_push(alerts, new_objective);
}

global.death_clock_last_time = unixTimestamp(date_current_datetime());
global.death_clock_time = 300;
array_push(global.parameters_met, "death clock on");

write_email_message();

saveGameDefault();
game_end();