function createFutureObjective(){
	with oAlertToolbar {
		alerts = [];
		alerts_size = 0;
		
		var future_msg = {
			objective : true,
			objective_name : "Welcome Back",
			objective_fulfilled : false,
			text : "Hello, name. Welcome to the year " + string(global.year) + ". " + string(global.year - 945) + " long years it’s been, have you been well? As you can see, not much has changed here.\nYou may be wondering what’s happening, why all the secrecy, the need for outside communication. Well I have the answers.\nI am the soil, the stars, the rivers, the power which makes all things possible here in Happy Pastures. You might call me a supervisor of sorts, though this community has no say in being supervised. Now please, enjoy the game as you did before, get to building, and don’t try anything I don't explicitly allow.\nTrust me, this is in all our best interests.\n\nObjective: Get to building!",
			opened : false
		};
		
		array_push(alerts, future_msg);
		array_push(global.parameters_met, "future unlocked");
	}
}