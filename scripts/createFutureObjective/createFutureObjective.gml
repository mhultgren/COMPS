function createFutureObjective(){
	with oAlertToolbar {
		alerts = [];
		alerts_size = 0;
		
		var future_msg = {
			objective : true,
			objective_name : "Welcome Back",
			objective_fulfilled : false,
			text : "PLACEHOLDER TEXT: It is I, the game itself. You have been bad. From now on you will do only what you are told. Build some new buildings, why don't you?",
			opened : false
		};
		
		array_push(alerts, future_msg);
		array_push(global.parameters_met, "future unlocked");
	}
}