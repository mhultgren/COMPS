draw_self();
// TODO: enable scrolling descriptions
draw_set_halign(fa_center);
draw_set_valign(fa_top);

draw_text_ext_transformed(x, y-180*global.zoom, building_desc, 18*global.zoom, 307*global.zoom, 1.3 * global.zoom, 1.3 * global.zoom, 0);