// Inherit the parent event
event_inherited();

if (!under_construction && just_constructed) {
	just_constructed = false;
	global.population += irandom_range(1, 4);
}