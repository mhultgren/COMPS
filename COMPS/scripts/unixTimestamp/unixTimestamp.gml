// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function unixTimestamp(datetime){
	datetime = is_undefined(datetime) ? date_current_datetime() : datetime 
    return floor(date_second_span(25569, datetime));
}