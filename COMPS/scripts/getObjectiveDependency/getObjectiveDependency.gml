// yet to be implemented, but plan is this:
// giant switch statement for each objective_name,
// return true or false if objective name is fulfilled
function getObjectiveDependency(obj_name){
	switch (string_lower(obj_name)) {
		case "test objective":
			return testObjective();
		case "welcome to game title!":
			return firstObjective();
		case "a brief wait":
			return secondObjective();
		case "five structures and a bridge":
			return fiveStructuresObjective();
		case "mine and yours":
			return mineObjective();
	}
}