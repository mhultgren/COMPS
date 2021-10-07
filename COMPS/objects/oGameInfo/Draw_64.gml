draw_set_alpha(0.7);
draw_sprite(sGameInfo, 0, x, y);

draw_set_color(c_green);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text(x, y-10, string_replace(string(global.coins), ".0", "") + " gold");
draw_text(x, y+15, "Population: " + string(global.population));

draw_set_color(c_white);
draw_set_alpha(1);