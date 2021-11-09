function loadGame(){
	// erase current game state
	global.building_selected = false;
	global.current_page = 0;
	global.drawCells = false;
	global.scroll = true;
	global.zoom = 1;
	global.year = 945;
	
	// TODO: add population increase mechanic
	global.population = 0;

	instance_destroy(oFlora);
	instance_destroy(oWater);
	instance_destroy(oStructure);
	instance_destroy(oGrid);
	instance_destroy(oGrass);
	instance_destroy(oBuildingMenu);
	instance_destroy(oCreator);
	instance_destroy(oAlertToolbar);
	
	var cell_groups = ds_map_create();

	if (file_exists("credits.ybx")) {
		var _buffer = buffer_load("credits.ybx");
		var _string = buffer_read(_buffer, buffer_string);
		buffer_delete(_buffer);
	
		var _loadData = json_parse(_string);
	
		var _loadGlobals = _loadData[0];
		var _loadGrid = _loadData[1];
		var _loadObjects = _loadData[2];
		var _loadAlerts = _loadData[3];
	
		global.coins = _loadGlobals.gold;
		global.population = _loadGlobals.population;
		global.parameters_met = _loadGlobals.parameters_met;
		global.name = _loadGlobals.name;
		global.death_clock_time = _loadGlobals.death_clock_time;
		global.death_clock_last_time = _loadGlobals.death_clock_last_time;
		
		var _objectsMap = ds_map_create();
	
		// populate object dictionary, using id as key
		for (var i=0; i<array_length(_loadObjects); i++) {
			ds_map_add(_objectsMap, _loadObjects[i].object_id, _loadObjects[i])
		}
	
		var _cells = 0;
		var _cellCount = 0;
		var row = 0;
	
		var _grid = instance_create_layer(x, y, "Grid", oGrid);
		instance_destroy(oCell);
	
		var _cellsPerRow = 0;
		var _objectsSeen = {};
	
		with (_grid) _cellsPerRow = global.cells_width;
	
		for (var col=0; col<array_length(_loadGrid); col++) {
			if (_cellCount == _cellsPerRow) {
				row++;
				_cellCount = 0;
			}
		
			// save cell reference, so it can be used with creating objects
			var _currentCell = _loadGrid[col];
			var _createdCell = instance_create_layer(_currentCell.x, _currentCell.y, "Buildings", oCell);
			var _createdCellId = 0;
		
			with _createdCell {
				x = _currentCell.x;
				y = _currentCell.y;
				depth = _currentCell.prev_depth;
				image_index = _currentCell.image_index;
				contains_structure = _currentCell.contains_structure;
				contains_flora = _currentCell.contains_flora;
				prev_depth = _currentCell.prev_depth;
				cell_group = _currentCell.cell_group;
				object_id = _currentCell.object_id;
				object_contained = _currentCell.object_contained;
				terrain = _currentCell.terrain;
			
				_createdCellId = id;
				_cells[row, col % _cellsPerRow] = id;
			}
			
			if (_currentCell.cell_group != -1 && !ds_map_exists(cell_groups, _currentCell.cell_group)) {
				var _newCellGroup = 0;
				
				with instance_create_layer(_currentCell.x, _currentCell.y, "UI", oCellGroup) {
					_newCellGroup = id;
				}
				
				cell_groups[? _currentCell.cell_group] = _newCellGroup;
			}
			
			if (_currentCell.cell_group != -1) {
				with _createdCell {
					cell_group = cell_groups[? _currentCell.cell_group];
				}
				
				with cell_groups[? _currentCell.cell_group] {
					ds_list_add(cell_group, _createdCellId);
					cell_group_size++;
				}
			}
		
			// tie object to cell, if exists
			if (_currentCell.object_id != -1) {
				var _newId = 0;
				var _objectIndex = 0;
			
				var _currentObject = _objectsMap[? _currentCell.object_id];
			
				if (!variable_struct_exists(_objectsSeen, _currentCell.object_id)) {
				
					if (_currentObject.object_type == "oBuilding") {
						with instance_create_layer(_currentObject.x, _currentObject.y, "Buildings", getObjectIndex(_currentObject.obj)) {
							x = _currentObject.x;
							y = _currentObject.y;
							depth = _currentObject.depth;
							under_construction = _currentObject.under_construction;
							time_created = _currentObject.time_created;
							time_left = _currentObject.time_left;
							time_required = _currentObject.time_required;
							time_last_generated = _currentObject.time_last_generated;
							just_constructed = _currentObject.just_constructed;
							parent_cell_row = _currentObject.parent_cell_row;
							parent_cell_col = _currentObject.parent_cell_col;
					
							_newId = id;
							_objectIndex = object_index;
						}
					}
			
					else if (_currentObject.object_type == "oFlora") {
						with instance_create_layer(_currentObject.x, _currentObject.y, "Buildings", getObjectIndex(_currentObject.obj)) {
							x = _currentObject.x;
							y = _currentObject.y;
							depth = _currentObject.depth;
							normal_index = _currentObject.normal_index;
							red_index = _currentObject.red_index;
							_newId = id;
							_objectIndex = object_index;
						}
					}
					
					else if (_currentObject.object_type == "oWater") {
						with instance_create_layer(_currentObject.x, _currentObject.y, "Buildings", getObjectIndex(_currentObject.obj)) {
							x = _currentObject.x;
							y = _currentObject.y;
							depth = _currentObject.depth;
							first_step = true;
							_newId = id;
							_objectIndex = object_index;
						}
					}
				} else {
					with (_objectsSeen[$_currentCell.object_id]) {
						_newId = id;
						_objectIndex = object_index;
					}
				}
			
				with (_createdCell) {
					object_contained = _objectIndex;
					object_id = _newId;
				}
			
				_objectsSeen[$_currentCell.object_id] = _newId;
			}
		
			_cellCount++;
		}
	
		with (_grid) global.cells = _cells;
	
		with instance_create_layer(1280, 128, "UI", oAlertToolbar) {
			alerts = _loadAlerts;
			alerts_size = 0;
		}
	
		ds_map_destroy(_objectsMap);
	}

	// check user save file for edits / inconsistencies
	if (file_exists("save.txt")) {
		var _buffer = buffer_load("save.txt");
		var _string = buffer_read(_buffer, buffer_string);
		buffer_delete(_buffer);
	
		var _loadData = json_parse(_string);
	
		global.year = _loadData.year;
		global.coins = _loadData.gold;
		global.name = _loadData.name;
	
		if (_loadData.year >= 3015 && !array_contains(global.parameters_met, "future unlocked")) {
			createFutureObjective();
		}
	}
	
	checkFileEditing();
	
	if (array_contains(global.parameters_met, "death clock on")) {
		activateDeathClock();
	}
	
	ds_map_destroy(cell_groups);
}