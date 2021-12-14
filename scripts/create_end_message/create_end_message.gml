function create_end_message(){
	global.scroll = false;
	
	with instance_create_layer(camera_get_view_x(view_camera[0]) + 364*global.zoom, camera_get_view_y(view_camera[0]) + 96*global.zoom, "UI", oDialogueBox) {
		objective = false;
		dialogue_text = "SUPERVISOR SYSTEM DISABLED.\nTHANK YOU FOR TESTING.\nWITH YOUR INVALUABLE INPUT, THE SUPERVISOR WILL SOON BE A PART OF SYSTEMS EVERYWHERE.\nGOODBYE, AND SEE YOU SOON.";
		alert_index = 0;
		add_to_toolbar = true;
	}
	
	var _string = 
@"You did it. You actually did it. I don't know what you did, but that thing is gone.
This little society can finally start living, on our own terms. Thank you.
Please, keep this file here, let this little world heal and live on, we deserve some time to ourselves.
Thank you.
";
	
	var _buffer = buffer_create(string_byte_length(_string) + 1, buffer_fixed, 1);
	buffer_write(_buffer, buffer_string, _string);
	buffer_save(_buffer, "thank_you_" + string(global.name) + ".txt");
	buffer_delete(_buffer);
}