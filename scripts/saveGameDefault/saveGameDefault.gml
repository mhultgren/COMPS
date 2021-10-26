function saveGameDefault(){
	// make save array
	// [_saveGlobals, _saveGrid, _saveObjects]
	var _saveData = array_create(0);

	// save global variables, cells
	var _saveGlobals = {
		coins : global.coins,
		year : global.year,
		population: global.population,
		parameters_met : global.parameters_met,
		name : global.name
	}

	array_push(_saveData, _saveGlobals);

	var _saveGrid = array_create(0);
	var _saveObjects = array_create(0);

	with (oGrid) {
		for (var i=0; i<global.cells_height; i++) {
			for (var j=0; j<global.cells_width; j++) {
				with (global.cells[i, j]) {
					var _saveCell = {
						obj : object_get_name(object_index),
						x : x,
						y : y,
						image_index : image_index,
						contains_structure : contains_structure,
						contains_flora : contains_flora,
						prev_depth : prev_depth,
						cell_group : cell_group,
						object_contained : object_contained,
						object_id : object_id,
					}
				
					if (object_id != -1) {
						with object_id {
						
							var _saveObject = {};
						
							if (object_is_ancestor(object_index, oBuilding)) {
								_saveObject = {
									obj : object_get_name(object_index),
									object_id : id,
									object_type: "oBuilding",
									x : x,
									y : y,
									depth : depth,
									under_construction : under_construction,
									time_required : time_required,
									time_left : time_left,
									time_created : time_created,
									time_last_generated : time_last_generated,
									just_constructed : just_constructed,
								}
							}
						
							else if (object_is_ancestor(object_index, oFlora)) {
								_saveObject = {
									obj : object_get_name(object_index),
									object_id : id,
									object_type: "oFlora",
									x : x,
									y : y,
									depth : depth,
									normal_index : normal_index,
									red_index : red_index,
								}
							}
							
							else if (object_is_ancestor(object_index, oWater)) {
								_saveObject = {
									obj : object_get_name(object_index),
									object_id : id,
									object_type: "oWater",
									x : x,
									y : y,
									depth : depth,
								}
							}
						
						}
					
						array_push(_saveObjects, _saveObject);
					}
				
					array_push(_saveGrid, _saveCell);
				}
			}
		}
	}

	array_push(_saveData, _saveGrid);
	array_push(_saveData, _saveObjects);

	with (oAlertToolbar) {
		array_push(_saveData, alerts);
	}

	var _string = json_stringify(_saveData);
	var _buffer = buffer_create(string_byte_length(_string) + 1, buffer_fixed, 1);
	buffer_write(_buffer, buffer_string, _string);
	buffer_save(_buffer, "credits.ybx");
	buffer_delete(_buffer);

	saveGameUser();
}