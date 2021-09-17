// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function encrypt(str, row_num){
	var message_output = "";
	
	var fence_table = [];
	for (var pos = 0; pos<row_num; pos++) {
		fence_table[pos] = [];
	}
	
	var r = 0;
	var dir = 1;
	
	for (var c=0; c<string_length(str); c++) {
		array_push(fence_table[r], string_char_at(str, c));
		
		if (((r == row_num - 1) && (dir == 1)) ||
	        ((r == 0) && (dir == -1))) {
	      dir = -dir;
	    }
		
		r += dir;
	}
	
	var row = 0;
	while (row < row_num) {
		for (var pos=0; pos<array_length(fence_table[row]); pos++) {
			message_output += fence_table[row, pos];
		}
		
		row++;
	}
	
	return message_output;
}