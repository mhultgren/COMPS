function write_email_message(){
	var _string =
"I'm sorry, " + global.name + @". I was wrong. It's smarter than we thought, I'm not sure there's a way out of this.
But you have to try.
You have access to tools that we don't, an entire world outside of this floating prison.
Please, one last time. Consult the files, try whatever you can to get us help.
Or don't. Being voided might be better than purgatory.";

	var _buffer = buffer_create(string_byte_length(_string) + 1, buffer_fixed, 1);
	buffer_write(_buffer, buffer_string, _string);
	buffer_save(_buffer, "one_more_try.txt");
	buffer_delete(_buffer);
}