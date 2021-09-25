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
			var num_to_generate = floor(seconds_passed / time_required_generate);
			
			global.coins += amount_generated * num_to_generate;
			time_last_generated += time_required_generate * num_to_generate;
		}
		
		time_left = time_required_generate - seconds_passed;
	}
	
	image_index = 2;
}