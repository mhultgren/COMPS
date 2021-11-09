function array_contains_insensitive(array, term){
	for (var i=0; i<array_length(array); i++) {
		if (string_lower(array[i]) == string_lower(term)) return true;
	} return false;
}