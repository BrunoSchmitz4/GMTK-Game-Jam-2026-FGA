if (!ativa) exit;

var _w = display_get_gui_width();
var _h = display_get_gui_height();

draw_sprite_stretched(pausa_sprite, 0, 0, 0, _w, _h);

var _halign_antigo = draw_get_halign();
var _valign_antigo = draw_get_valign();
var _cor_antiga    = draw_get_color();

draw_set_color(c_black);
draw_rectangle(0, 0, _w, 24, false);

draw_set_color(c_white);
draw_set_valign(fa_middle);
draw_set_halign(fa_left);
draw_text(8, 12, "> " + keyboard_string);
draw_set_halign(fa_right);
draw_text(_w - 8, 12, string(global.segundo) + "s");

draw_set_halign(_halign_antigo);
draw_set_valign(_valign_antigo);
draw_set_color(_cor_antiga);