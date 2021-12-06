if (file_exists("save.txt")) {
	var _buffer = buffer_load("save.txt");
	var _string = buffer_read(_buffer, buffer_string);
	buffer_delete(_buffer);
	
	var _loadData = json_parse(_string);
	
	if (_loadData.year >= 3015) {
		var lay_id = layer_get_id("Background");
		var back_id = layer_background_get_id(lay_id);
		layer_background_sprite(back_id, sFutureBackground);
	}
}