// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function fiveStructuresObjective(){
	/*
	var new_objective = {
			objective : true,
			text : "What does every good community have in common? That's right! Seven structures or more, and a bridge too! No better time than the present to start building up this little community. Get to buying, we'll get to building.",
			objective_name : "Five structures and a bridge",
			objective_fulfilled : false,
			opened : false,
		}; */
	
	return instance_number(oBuilding) > 7 && instance_exists(oBridge);
}