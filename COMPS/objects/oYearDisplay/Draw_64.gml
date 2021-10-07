draw_set_alpha(alpha);

draw_set_color(c_black);
draw_rectangle(0, 0, room_width, room_height, false);

draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_color(c_white);
draw_text_transformed(688, 128, "GAME TITLE: YEAR " + string(global.year), 4, 4, 0);

draw_set_alpha(1);