draw_set_halign(fa_center);
draw_set_valign(fa_top);

if (room == rm_test_disclaimer) {
	draw_text_ext_transformed(room_width / 2, y, "Thank you for trying my game! Please keep in mind this is very much in an alpha testing stage, and thus art, music, sound, and narrative have yet to be finished and remain rough around the edges. That said, please feel free to give me any and all feedback or advice. And please please let me know if you run into any bugs or if anything is communicated in a confusing manner. Enjoy!\n\nPress ENTER to continue.", 20, 800, 1.2, 1.2, 0);
} else if (room == rm_test_end) {
	draw_text_ext_transformed(room_width / 2, y, "TEST COMPLETE. Thank you for being a tester, and for finishing this (very) rough draft. Please fill out the Google Form I sent you through your email if possible, your feedback is much appreciated!\n\nPress ENTER to quit.", 20, 800, 1.2, 1.2, 0);
}