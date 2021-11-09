// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_iso_sprite(object_id){
	with object_id {
		if (global.year < 3015) {
			switch (object_index) {
				case oCell			: return sCell;
				case oTree			: return sTree;
				case oMine			: return sMine;
				case oWell			: return sWell;
				case oHouse			: return sHouse;
				case oBridge		: return sBridge;
				case oWater			: return sWaterTile;
				case oBoatHouse		: return sBoatHouse;
				case oStorehouse	: return sStorehouse;
				case oTutorialHouse : return sTutorialHouse;
				case oFuturePlaceholderOne : return sHouse;
				case oFuturePlaceholderTwo : return sHouse;
				case oFuturePlaceholderThree : return sHouse;
				case oFuturePlaceholderFour : return sHouse;
			}
		} else {
			switch (object_index) {
				case oCell			: return sCell;
				case oTree			: return sTree;
				case oMine			: return sMine;
				case oWell			: return sWell;
				case oHouse			: return sHouse;
				case oBridge		: return sBridge;
				case oWater			: return sWaterTile;
				case oBoatHouse		: return sBoatHouse;
				case oStorehouse	: return sStorehouse;
				case oTutorialHouse : return sTutorialHouse;
				case oFuturePlaceholderOne : return sHouse;
				case oFuturePlaceholderTwo : return sHouse;
				case oFuturePlaceholderThree : return sHouse;
				case oFuturePlaceholderFour : return sHouse;
			}
		}
		
		show_debug_message(object_get_name(object_index));
	}
}