if (under_construction) {
	var seconds_passed = unixTimestamp(date_current_datetime()) - time_created;
	
	if (seconds_passed >= time_required) {
		under_construction = false;
		image_index = 2;
	} else if (seconds_passed >= time_required * 0.5) image_index = 1;
	else image_index = 0;
	
	time_left = time_required - seconds_passed;
} else {
	image_index = 2;
}