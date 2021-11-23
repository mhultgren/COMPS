function create_readme() {
	var _string =
@"PLACEHOLDER TEXT: Generic readme text here.
	
Game designed & coded by Myles Hultgren.
Contact me at myleshultgren@gmail.com
For game specific inquires please use subject line: HAPPY PASTURES (case sensitive)";
	
	var _buffer = buffer_create(string_byte_length(_string) + 1, buffer_fixed, 1);
	buffer_write(_buffer, buffer_string, _string);
	buffer_save(_buffer, "README.txt");
	buffer_delete(_buffer);
}