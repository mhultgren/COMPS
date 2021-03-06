// Inherit the parent event
event_inherited();

if (!under_construction && just_constructed) {
	just_constructed = false;
	global.population += 1;
	
	if (!array_contains(global.parameters_met, "tutorial alert sent")) {
		with oAlertToolbar {
		
			var first_message = {
				objective : true,
				text : "Hello there! I will be your guide for the tutorial section for this game, Happy Pastures." + " You've already created your first house" + chr(8212) + "mine, in fact" + chr(8212) + "but you still have things to learn."
						+ " To start, let's build another house. Feel free to put it anywhere on the map, though I wouldn't mind having some neighbors...\n\n"
						+ "Just click the hammer icon with your mouse to head to the building menu and purchase a house! Click anywhere on the map to set it down.\n\nNote: move around the map with the arrow keys. You can zoom out with your mouse wheel or by pressing - or +.",
				objective_name : "Welcome to Happy Pastures!",
				objective_fulfilled : false,
				opened : false,
			};
		
			array_push(alerts, first_message);
			array_push(global.parameters_met, "tutorial alert sent");
		}
	}
}