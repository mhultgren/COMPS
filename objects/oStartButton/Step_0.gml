var mouse_hovering = position_meeting(mouse_x, mouse_y, id);

image_index = mouse_hovering;

if (mouse_hovering && mouse_check_button_pressed(mb_left)) {
	with instance_create_layer(x, y, "Fade", oFadeOut) dest_room = rm_main;
}