// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function writeDirectionMessage(){
	var _string = "";
	
	if (os_type == os_windows) {
		_string = "C:\\Users\\" + global.name + "\\AppData\\Local\\Happy_Pastures";
	}
	
	if (os_type == os_macosx) {
		_string = environment_get_variable("HOME") + "/Library/Application Support/Happy Pastures";
	}
	
	var _buffer = buffer_create(string_byte_length(_string) + 1, buffer_fixed, 1);
	buffer_write(_buffer, buffer_string, _string);
	buffer_save(_buffer, "▯.txt");
	buffer_delete(_buffer);
}