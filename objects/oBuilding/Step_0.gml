if (under_construction) {
	var seconds_passed = unixTimestamp(date_current_datetime()) - time_created;
	
	if (seconds_passed >= time_required) {
		under_construction = false;
		image_index = 2;
		time_last_generated = unixTimestamp(date_current_datetime()) - (seconds_passed - time_required);
	} else if (seconds_passed >= time_required * 0.5) image_index = 1;
	else image_index = 0;
	
	time_left = time_required - seconds_passed;
} else {
	if (generates_gold) {
		var seconds_passed = unixTimestamp(date_current_datetime()) - time_last_generated;
		
		if (seconds_passed >= time_required_generate) {
			if (sprite_width <= 64 && sprite_height <= 64) instance_create_layer(x, y-48, "Buildings", oGold);
			else instance_create_layer(x + (sprite_width/2), y - 16, "Buildings", oGold);
			
			var num_to_generate = floor(seconds_passed / time_required_generate);
			global.coins += amount_generated * num_to_generate;
			time_last_generated += time_required_generate * num_to_generate;
		}
		
		time_left = time_required_generate - seconds_passed;
	}
	
	image_index = 2;
}