function writeFirstFutureMessage(){
	var _string = "Add a variable! The variable's name is... POWER.";
	
	var _buffer = buffer_create(string_byte_length(_string) + 1, buffer_fixed, 1);
	buffer_write(_buffer, buffer_string, _string);
	buffer_save(_buffer, "welcome_back.txt");
	buffer_delete(_buffer);
}