// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_time(time_left){
	if (time_left < 60) return string(floor(time_left)) + "s";
	
	var time = "";
	
	if (time_left >= 3600) {
		var hours = floor(time_left / 3600);
		time += string(hours) + "h ";
		time_left -= hours * 3600;
	}
	
	if (time_left > 60) {
		var mins = floor(time_left / 60);
		time += string(mins) + "m ";
		time_left -= mins * 60;
	}
	
	time += string(time_left) + "s";
	
	return time;
}