if (!first_step) {
	first_step = true;
	
	with instance_nearest(x, y, oCell) {
		if (contains_flora) {
			instance_destroy(object_id);
		}
	
		object_contained = other.object_index;
		object_id = other.id;
	}
	
	var at_bottom = y > 1472;

	if (!at_bottom) {
		var splits = !(irandom_range(0, 25));
	
		var middle = irandom(1);
		var left = irandom(1);
	
		var at_rightmost = x > 2688;
		var at_leftmost = x < 64;
	
		if (at_rightmost) left = true;
		if (at_leftmost) left = false;
	
		if (splits) {
			instance_create_layer(x + 64, y + 64, "Water", oRiver);
			instance_create_layer(x - 64, y + 64, "Water", oRiver);
		} else {
			if (middle) {
				instance_create_layer(x, y + 64, "Water", oRiver);
			} else {
				if (left) instance_create_layer(x - 64, y + 64, "Water", oRiver);
				else instance_create_layer(x + 64, y + 64, "Water", oRiver);
			}
		}
	}
}