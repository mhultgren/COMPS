draw_self();

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text_ext_transformed(x + sprite_width/2, y + 544, string(global.current_page+1) + "/" + string(max_pages), 10, 96, 2, 2, 0);