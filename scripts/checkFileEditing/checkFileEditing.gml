function checkFileEditing(){
	if (file_exists("credits.ybx") && file_exists("save.txt")) {
		var main_buffer = buffer_load("credits.ybx");
		var user_buffer = buffer_load("save.txt");
		
		var main_string = buffer_read(main_buffer, buffer_string);
		var user_string = buffer_read(user_buffer, buffer_string);
		
		buffer_delete(main_buffer);
		buffer_delete(user_buffer);
		
		var main_data = json_parse(main_string);
		var user_data = json_parse(user_string);
		
		if (main_data[0].gold != user_data.gold) {
			var alert_info = {
				text : "I SEE WHAT YOU DID THERE. DON'T CHEAT.",
				objective : false,
				opened : false,
				alert_index : 0
			};
			
			global.coins = 0;
			
			with oAlertToolbar {
				array_insert(alerts, 0, alert_info);
			}
			
			with oBuilding {
				time_last_generated = unixTimestamp(date_current_datetime());
			}
		}
	
		if (array_contains(global.parameters_met, "create folder desc") && array_contains_insensitive(variable_struct_get_names(user_data), "override")) {
			if (user_data.override && !array_contains(global.parameters_met, "turn on clock")) array_push(global.parameters_met, "turn on clock");
		}
		
		if (!array_contains(global.parameters_met, "game over") && array_contains_insensitive(variable_struct_get_names(user_data), "killswitch")) {
			if (user_data.killswitch) {
				array_push(global.parameters_met, "game over");
			}
		}
	}
}