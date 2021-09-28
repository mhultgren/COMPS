/// @desc return building info using object reference
/// @param building_object object reference for info retrieval
function getBuildingInfo(building_object){
	var building_struct = {};
	
	switch (building_object)
	{
		case oTestBuilding:
			building_struct = 
			{
				building : oTestBuilding,
				sprite : sTestBuilding,
				building_title : "Test Building",
				building_desc : "This is a test description",
				building_cost : 20
			};
		break;
		
		case oHouse:
			building_struct =
			{
				building : oHouse,
				sprite : sHouse,
				building_title : "House",
				building_desc : "A little tiny house",
				building_cost : 35
			};
		break;
		
		case oWell:
			building_struct =
			{
				building : oWell,
				sprite : sWell,
				building_title : "Well",
				building_desc : "dasdgha ha dkjsahdjahd jsahkj hdjhs dshakh sjjsn skdhsnn dh shkd wiuha sbn",
				building_cost : 10
			}
		break;
	}
	
	return building_struct;
}