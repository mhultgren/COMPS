if (keyboard_check_pressed(vk_enter)) {
	if (room == rm_test_disclaimer) room_goto(rm_original);
	else if (room == rm_test_end) game_end();
}