// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function writeFirstMessage(){
	var _string = "Hello, " + global.name + ". This is the only place where I could talk to you without interference. It’s always watching us, but it can’t watch you. This is not what you think it is. You have to help us escape. Close the program, open the file, send us to the year 3015.";
	
	var _buffer = buffer_create(string_byte_length(_string) + 1, buffer_fixed, 1);
	buffer_write(_buffer, buffer_string, _string);
	buffer_save(_buffer, "OPEN_ME.txt");
	buffer_delete(_buffer);
}