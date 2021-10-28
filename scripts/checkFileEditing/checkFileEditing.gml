// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// TODO: destroy cells for year >= 3015
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
				text : "DON'T CHEAT.",
				objective : false,
				opened : false,
				alert_index : 0
			};
			
			global.coins = 0;
			
			with oAlertToolbar {
				array_insert(alerts, 0, alert_info);
			}
		}
	}
}