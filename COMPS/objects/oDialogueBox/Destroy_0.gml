global.scroll = true;

var alert_info = {
	text : dialogue_text,
	objective : objective,
	opened : true
};

with oAlertToolbar {
	array_insert(alerts, other.alert_index, alert_info);
}