counter = clamp(counter + 1, 0, string_length(dialogue_text));
var substr = string_copy(dialogue_text, 1, counter);

draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_text_ext_transformed(694, 120, substr, 18, 485, 1.3, 1.3, 0);