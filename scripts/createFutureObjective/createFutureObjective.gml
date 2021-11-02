function createFutureObjective(){
	with oAlertToolbar {
		alerts = [];
		alerts_size = 0;
		
		var future_msg = {
			objective : false,
			text : "Welcome to the future!",
			opened : false
		};
		
		array_push(alerts, future_msg);
		array_push(global.parameters_met, "future unlocked");
	}
}