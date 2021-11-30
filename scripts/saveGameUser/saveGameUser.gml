// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function saveGameUser(){
	var _saveData = {
		year : global.year,
		gold : global.coins,
		name : global.name
	};
	
	if (array_contains(global.parameters_met, "game over")) {
		var _saveData = {
			year : global.year,
			gold : global.coins,
			name : global.name,
			killswitch : true
		};
	}
	
	var _string = string_replace_all(json_stringify(_saveData), ".0", "");
	_string += "\n" + 
@"ZZZZZ TVORX FUVKH SVOSG RPJIE RIQUP THGSC QEATK EILCX HSBNP XVKTD
CWQJW CMIHG QFTRQ BLLDP WKQJS QBWCN IBJNF KOFGQ AXWDA PMWMV UUGID
DBMEW BRDBF DBNLA DLNMC NVITL CQAOR NHUNB PIJXW DHMLB SJNFF PQREI
BIXXE JLDPI QMGFN OALUR FNESA NXPUJ JHBWS STNOM XVOPE DVKMA BNFGM
BNETW SBMUD UIXPA FICMF CWOHE WTSQC UUTNS FQKWJ RLWUC OSLMR IUDDH
VTVHU FREUB JDRIE GIUQG PGVGF EPHSC LNIXI XUSBF RENDG JAOPW CGJDT
IHFNG TXBIM IXLVE UPMUI ESFLV UXMQE EPOGV XBTMX HOLNN TKERK LWVEV
WNPWP LJNWU KWUJJ GRVVH OULOC TITAX NISCS SWHPJ ILTMK RNIVN HVSAS
KVVDC LKGJP IHNAJ VSUAB LXNOT TIQMK SLVBP FCKCU CFQMV GBOWM CDNDB
BHLXN UXGMA SLTHS MWOAC ESMBX TTLQP KEELB SFUFC KUATC CVMUI RDMDL
GTKMG KUAOK VFLJV BJIHW HPQTP VQHWU WVKSR BDHEU RRCVE MOLGI TJSPT
PKQQI CJBZZ YYYYY";
	
	var _buffer = buffer_create(string_byte_length(_string) + 1, buffer_fixed, 1);
	buffer_write(_buffer, buffer_string, _string);
	buffer_save(_buffer, "save.txt");
	buffer_delete(_buffer);
}