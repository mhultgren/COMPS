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
		
		case oTutorialHouse:
			building_struct =
			{
				building		: oTutorialHouse,
				sprite			: sTutorialHouse,
				// TODO: building title change?
				building_title	: "Tutorial House",
				building_desc	: "Build this house! It's free after all.",
				building_cost	: 0
			};
		break;
		
		case oHouse:
			building_struct =
			{
				building : oHouse,
				sprite : sHouse,
				building_title : "House",
				building_desc : "A little tiny house.",
				building_cost : 35 * ((instance_number(oHouse) * .2) + 1)
			};
		break;
		
		case oWell:
			building_struct =
			{
				building : oWell,
				sprite : sWell,
				building_title : "WELL",
				building_desc : "▯▯▯▯ ▯▯ ▯ ▯▯▯▯▯ ▯▯ ▯▯▯▯▯ ▯▯▯ ▯▯▯ ▯▯▯▯▯▯▯ ▯▯ ▯▯▯▯ ▯▯▯▯▯▯▯ ▯▯ ▯▯▯ ▯▯▯▯▯▯▯",
				building_cost : 300
			}
		break;
		
		case oBridge:
			building_struct =
			{
				building : oBridge,
				sprite : sBridge,
				building_title : "Bridge",
				building_desc : "A river runs underneath it. Give your residents the ability to see whether the grass is truly greener!\n\nNote: bridges must be built over water!",
				building_cost : 70,
			}
		break;
		
		case oMine:
			building_struct =
			{
				building : oMine,
				sprite : sMine,
				building_title : "Mine",
				building_desc : "What is the point of shiny things if not to dig them up out of the ground and exchange them for more, less shiny things?",
				building_cost : 150 * (instance_number(oMine)),
			}
		break;
			
		case oBoatHouse:
			building_struct =
			{
				building : oBoatHouse,
				sprite : sBoatHouse,
				building_title : "Boat House",
				building_desc : "No society would be complete without a boat house! What is the function of a boat house, you might ask? Boats, of course! Boat houses also tend to be the perfect place for one to wind down with a nice kickback or wind up with an energizing party, maybe it's the waterfront location.",
				building_cost : 500 * ((instance_number(oBoatHouse) * .2) + 1),
			}
		break;
			
		case oStorehouse:
			building_struct =
			{
				building : oStorehouse,
				sprite : sStorehouse,
				building_title : "Storehouse",
				building_desc : "A well functioning society should have a place to store their food, wouldn't you think? Everybody needs to eat, and the people of Happy Pastures tend to be a hungry bunch.",
				building_cost : 100 * ((instance_number(oStorehouse) * .2) + 1),
			}
		break;
	}
	
	return building_struct;
}