draw_sprite_ext(sBuildingMenu, 0, x, y, global.zoom, global.zoom, 0, c_white, 1);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text_ext_transformed(x + sprite_width/2*global.zoom, y + 544*global.zoom, string(global.current_page+1) + "/" + string(max_pages), 10, 96, 2*global.zoom, 2*global.zoom, 0);