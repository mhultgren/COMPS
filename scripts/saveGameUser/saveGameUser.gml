// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function saveGameUser(){
	var _saveData = {
		year : global.year,
		gold : global.coins,
		name : global.name
	};
	
	var _string = string_replace_all(json_stringify(_saveData), ".0", "");
	_string += "\nZZZZZ HSQVX KVCDX PFGTM GXLMR WIIVV VAFJF MFLRV UPSTA IXDOC WAHGI TWWEL GQHUC KFDIM DIKXN BIOFR UWSXU RXCWV OXIFN PWILX VAHJU FPTTB NBDVV OAFAN ALSDF GMNIM QMWZZ YYYYY";
	
	var _buffer = buffer_create(string_byte_length(_string) + 1, buffer_fixed, 1);
	buffer_write(_buffer, buffer_string, _string);
	buffer_save(_buffer, "save.txt");
	buffer_delete(_buffer);
}