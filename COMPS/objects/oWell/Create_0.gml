// TODO: potentially create multiCell class, for any object and/or structure which spans multiple cells

sprite = sWell;
red_index = 1;
normal_index = 0;
cell_group = 0;

under_construction = true;
time_required = 86400;
time_left = time_required;
time_created = unixTimestamp(date_current_datetime());

var well_id = id;

with instance_create_layer(x, y, "UI", oCellGroup) {
	cell_group_size = collision_rectangle_list(other.x, other.y, other.x+127, other.y+127, oCell, false, false, cell_group, false);
	
	for (var i=0; i<cell_group_size; i++) {
		with cell_group[| i] {
			cell_group = other.id;
			object_contained = oWell;
			object_id = well_id;
		}
	}
	
	contains_structure = true;
	
	other.cell_group = id;
}