global.scroll = true;

if (objective) {
	var alert_info = {
		text : dialogue_text,
		objective : objective,
		objective_name : objective_name,
		objective_fulfilled : objective_fulfilled,
		opened : true
	};
} else {
	var alert_info = {
		text : dialogue_text,
		objective : objective,
		opened : true
	};
}

with oAlertToolbar {
	array_insert(alerts, other.alert_index, alert_info);
}