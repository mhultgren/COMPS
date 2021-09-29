// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function launchObjectiveFulfillmentAction(obj_name){
	switch (string_lower(obj_name)) {
		case "test objective": testObjectiveFulfilled(); break;
		case "welcome to game title!": firstObjectiveFulfilled(); break;
		case "a brief wait": secondObjectiveFulfilled(); break;
	}
}