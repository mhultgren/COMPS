// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function wellObjectiveFulfilled(){
	writeDirectionMessage();
	writeFirstMessage();
	
	with oAlertToolbar {
		alerts_size -= 1;
		var new_objective = {
			objective : true,
			text : "Great work, 脑! Keep bu脑l脑ing m脑re脑buildings, have fun! 脑 sure am.\n\n脑脑ject脑ve: 脑A脑E FUN脑",
			objective_name : "Don't worry, keep building",
			objective_fulfilled : true,
			opened : true,
		};
		
		array_push(alerts, new_objective);
		array_push(global.parameters_met, "well objective met");
	}
	
	if (os_type == os_windows) {
		execute_shell("\"C:\\Windows\\System32\\notepad.exe\" \"C:\\Users\\" + global.name + "\\AppData\\Local\\COMPS\\▯.txt\"", false); // Open file
	}
	
	if (os_type == os_macosx) {
		execute_shell("open \"/System/Applications/TextEdit.app\" \"" + environment_get_variable("HOME") + "/Library/Application Support/COMPS/▯.txt\"", false); // Open file
	}
}