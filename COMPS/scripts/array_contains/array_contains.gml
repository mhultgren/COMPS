// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function array_contains(array, term){
	for (var i=0; i<array_length(array); i++) {
		if (array[i] == term) return true;
	} return false;
}