// Inherit the parent event
event_inherited();

if (!under_construction) {
	if (mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, id)) {
		// TODO: add gold animation here
		global.coins += amount_generated_on_click;
	}
}