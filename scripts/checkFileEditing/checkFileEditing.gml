// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
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
		
		if (main_data[0].year != user_data.year) show_debug_message("OUCH!");
	}
}