event_inherited();

under_construction = true;
time_created = unixTimestamp(date_current_datetime());
just_constructed = true;

// set time required here, used to inform building creation & drawn timer
time_required = 30;
time_left = time_required;

generates_gold = true;
time_last_generated = 0;

// time needed (secs) to generate thing
time_required_generate = 10;
amount_generated = 1;