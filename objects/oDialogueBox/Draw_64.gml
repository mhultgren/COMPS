counter = clamp(counter + 1, 0, string_length(dialogue_text));
var substr = string_copy(dialogue_text, 1, counter);

draw_set_halign(fa_center);
draw_set_valign(fa_top);

var string_sep = 22;
var string_w = 465;

if (objective) {
	draw_set_color(c_green);
	draw_text_ext_transformed(694, 120, objective_name, string_sep, string_w, 1.3, 1.3, 0);
	draw_set_color(c_white);
	draw_text_ext_transformed(694, 168, substr, string_sep, string_w, 1.3, 1.3, 0);
} else draw_text_ext_transformed(694, 120, substr, string_sep, string_w, 1.3, 1.3, 0);