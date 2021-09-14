// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
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
	}
	
	return building_struct;
}