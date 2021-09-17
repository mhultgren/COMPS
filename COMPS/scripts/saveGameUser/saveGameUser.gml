// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function saveGameUser(){
	var _saveData = {
		year : global.year,
		coins : global.coins,
		buildings : 30,
	};
	
	var _string = string_replace_all(json_stringify(_saveData), ".0", "");
	
	show_debug_message(_string);
	show_debug_message(encrypt(_string, 4));
	
	var _buffer = buffer_create(string_byte_length(_string) + 1, buffer_fixed, 1);
	buffer_write(_buffer, buffer_string, _string);
	buffer_save(_buffer, "save.txt");
	buffer_delete(_buffer);
}