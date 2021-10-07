event_inherited();

if (!under_construction && just_constructed) {
	just_constructed = false;
	global.population += 4;
}