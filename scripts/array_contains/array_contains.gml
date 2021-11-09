	function array_contains(array, term){
	for (var i=0; i<array_length(array); i++) {
		if (array[i] == term) return true;
	} return false;
}