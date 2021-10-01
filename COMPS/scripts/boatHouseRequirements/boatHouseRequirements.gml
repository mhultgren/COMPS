// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function boatHouseRequirements(main_cell){
	with main_cell {
		if (contains_structure || contains_water) return false;
		
		var check_left = x > 32;
		var check_right = x < room_width - 32;
		var check_up = y > 32;
		var check_down = y < room_height - 32;
		
		if (check_left) {
			with (instance_nearest(x - 48, y, oCell)) if (contains_water) return true;
		}
		
		if (check_right) {
			with (instance_nearest(x + 48, y, oCell)) if (contains_water) return true;
		}
		
		if (check_up) {
			with (instance_nearest(x, y - 48, oCell)) if (contains_water) return true;
		}
		
		if (check_down) {
			with (instance_nearest(x, y + 48, oCell)) if (contains_water) return true;
		}
	}
	
	return false;
}