draw_set_alpha(0.7);
draw_sprite(sGameInfo, 0, x, y);

draw_set_color(c_green);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text(x, y, "$" + string_replace(string(global.coins), ".0", ""));

draw_set_color(c_white);
draw_set_alpha(1);