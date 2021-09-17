/// @desc Load game
// erase current game state
global.building_selected = false;
global.current_page = 0;
global.drawCells = false;

instance_destroy(oFlora);
instance_destroy(oStructure);
instance_destroy(oGrid);
instance_destroy(oBuildingMenu);
instance_destroy(oCreator);

if (file_exists("credits.ybx")) {
	var _buffer = buffer_load("credits.ybx");
	var _string = buffer_read(_buffer, buffer_string);
	buffer_delete(_buffer);
	
	var _loadData = json_parse(_string);
	
	var _loadGlobals = _loadData[0];
	var _loadGrid = _loadData[1];
	var _loadObjects = _loadData[2];
	
	global.coins = _loadGlobals.coins;
	
	var _objectsMap = ds_map_create();
	
	// populate object dictionary, using id as key
	for (var i=0; i<array_length(_loadObjects); i++) {
		ds_map_add(_objectsMap, _loadObjects[i].object_id, _loadObjects[i])
	}
	
	var _cells = 0;
	var _cellCount = 0;
	var row = 0;
	
	var _grid = instance_create_layer(x, y, "UI", oGrid);
	instance_destroy(oCell);
	
	var _cellsPerRow = 0;
	var _objectsSeen = {};
	
	with (_grid) _cellsPerRow = cells_width;
	
	for (var col=0; col<array_length(_loadGrid); col++) {
		if (_cellCount == _cellsPerRow) {
			row++;
			_cellCount = 0;
		}
		
		// save cell reference, so it can be used with creating objects
		var _currentCell = _loadGrid[col];
		var _createdCell = instance_create_layer(_currentCell.x, _currentCell.y, "Buildings", oCell);
		
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
			
			_cells[row, col % _cellsPerRow] = id;
		}
		
		// tie object to cell, if exists
		if (_currentCell.object_id != -1) {
			var _newId = 0;
			var _objectIndex = 0;
			
			var _currentObject = _objectsMap[? _currentCell.object_id];
			
			if (!variable_struct_exists(_objectsSeen, _currentCell.object_id)) {
				
				if (_currentObject.object_type == "oStructure") {
					with instance_create_layer(_currentObject.x, _currentObject.y, "Buildings", _currentObject.obj) {
						x = _currentObject.x;
						y = _currentObject.y;
						depth = _currentObject.depth;
						under_construction = _currentObject.under_construction;
						time_created = _currentObject.time_created;
						time_left = _currentObject.time_left;
						time_required = _currentObject.time_required;
					
						_newId = id;
						_objectIndex = object_index;
					}
				}
			
				else if (_currentObject.object_type == "oFlora") {
					with instance_create_layer(_currentObject.x, _currentObject.y, "Buildings", _currentObject.obj) {
						x = _currentObject.x;
						y = _currentObject.y;
						depth = _currentObject.depth;
						normal_index = _currentObject.normal_index;
						red_index = _currentObject.red_index;
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
	
	with (_grid) cells = _cells;
	
	ds_map_destroy(_objectsMap);
}

// check user save file for edits / inconsistencies
if (file_exists("save.txt")) {
	var _buffer = buffer_load("save.txt");
	var _string = buffer_read(_buffer, buffer_string);
	buffer_delete(_buffer);
	
	var _loadData = json_parse(_string);
	
	if (_loadData.year == 2434312) game_end();
}