/// @desc return building info using object reference
/// @param building_object object reference for info retrieval
function getBuildingInfo(building_object){
	var building_struct = {};
	
	switch (building_object)
	{	
		case oTutorialHouse:
			building_struct =
			{
				building		: oTutorialHouse,
				sprite			: sTutorialHouse,
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
				building_cost : 35 * ((instance_number(oHouse) * .2) + (instance_number(oHouse) > 0))
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
				building_desc : "A well functioning society should have a place to store their food, wouldn't you agree? Everybody needs to eat, and the people of Happy Pastures tend to be a hungry bunch.",
				building_cost : 100 * ((instance_number(oStorehouse) * .2) + 1),
			}
		break;
		
		case oFutureHome:
			building_struct =
			{
				building : oFutureHome,
				sprite : sFutureHome,
				building_title : "Future Home",
				building_desc : "A home of the future! Watch as it uses trademark lifting technology to lift and lower a giant roof and a giant ball. Cool, huh?",
				building_cost : 200 * ((instance_number(oFutureHome) * .2) + 1)
			}
		break;
		
		case oCubeSpinner:
			building_struct =
			{
				building : oCubeSpinner,
				sprite : sCubeSpinner,
				building_title : "Cube Spinner",
				building_desc : "What exactly does this building do? Why, it spins a cube of course! Why, you might ask? A cube does not spin because it has an answer, it spins because it is a cube.",
				building_cost : 700 * ((instance_number(oCubeSpinner) * .2) + 1)
			}
		break;
		
		case oWatchTower:
			building_struct =
			{
				building : oWatchTower,
				sprite : sWatchTower,
				building_title : "Watch Tower",
				building_desc : "Here to ensure this community runs smoothly! Don't mind it's constant surveillance.",
				building_cost : 1000 * ((instance_number(oWatchTower) * .2) + 1)
			}
		break;
	}
	
	return building_struct;
}