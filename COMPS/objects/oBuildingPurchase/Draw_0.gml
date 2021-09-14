draw_self();
draw_sprite_ext(sprite, 2, x, y-32, 5, 5, 0, c_white, 1);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text_ext_transformed(x, y+180, "$" + string(building_cost), 10, 100, 2, 2, 0);