	if (keyboard_check_pressed(vk_enter) || mouse_check_button_pressed(mb_left)) {
	if (counter < string_length(dialogue_text)) counter = string_length(dialogue_text);
	else instance_destroy();
}