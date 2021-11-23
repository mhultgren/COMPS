// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function saveGameUser(){
	var _saveData = {
		year : global.year,
		gold : global.coins,
		name : global.name
	};
	
	var _string = string_replace_all(json_stringify(_saveData), ".0", "");
	_string += "\nZZZZZ WRNPW COPEX DEBAM SRALU LDKFW GUBHA NENTR XOLCU EULTM EDSTD WQWIV CNEKG TPVTS PECXV EKRJV PSNWU LWMAR OVEAD TSHHM NMJLV FPEDU KXCVA XMBRJ ESWXW SFVIO HMRZZ YYYYY";
	
	var _buffer = buffer_create(string_byte_length(_string) + 1, buffer_fixed, 1);
	buffer_write(_buffer, buffer_string, _string);
	buffer_save(_buffer, "save.txt");
	buffer_delete(_buffer);
}