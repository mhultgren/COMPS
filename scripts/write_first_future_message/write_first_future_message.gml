function write_first_future_message(){
	var _string = 
string(global.year - 945) + @" years. It's been " + string(global.year - 945) + @" years since the last building was constructed. Is it you, " + string(global.name) + @"?
The rest stopped believing a long, long time ago. I won't lie, it hasn't been easy for me either, hard to stay sane in a place like this. Did you know there are exactly 12,374,311 stars visible to the naked eye out here? Trust me, I've counted, and recounted. They haven't even shifted an inch since you left.
But you came back, that's what matters. You need to help, and I think I know how. There is a variable, left out of your save file, which when added will shut down this malevolent force once and for all. I don't know the name, but it may be included in the game's files. I don't have access to them, but you do.
Find the variable, and add it to your save file. Please, we need your help.";
	
	var _buffer = buffer_create(string_byte_length(_string) + 1, buffer_fixed, 1);
	buffer_write(_buffer, buffer_string, _string);
	buffer_save(_buffer, "welcome_back.txt");
	buffer_delete(_buffer);
}