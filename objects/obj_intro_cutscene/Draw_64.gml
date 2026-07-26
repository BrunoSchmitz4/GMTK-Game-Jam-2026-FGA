var _gui_w = display_get_gui_width();
var _gui_h = display_get_gui_height();

var _escala = 3; 

var _img_x = _gui_w / 2;
var _img_y = _gui_h / 2 - 50; 

// Desenha a Ampulheta
draw_sprite_ext(spr_ampulheta, 0, _img_x, _img_y, _escala, _escala, 0, c_white, alpha_imagem);

// Desenha o Texto
if (estado == 2) {
    var _current_text = text_array[text_index];
    var _text_to_draw = string_copy(_current_text, 1, floor(char_index));

    draw_set_font(-1); 
    draw_set_halign(fa_center);
    draw_set_valign(fa_top);
    draw_set_color(c_white);

    var _altura_ampulheta = sprite_get_height(spr_ampulheta) * _escala;
    var _text_y = _img_y + (_altura_ampulheta / 2) + 40; 

    draw_text_ext(_gui_w / 2, _text_y, _text_to_draw, 35, 800);

   // --- INDICADOR VISUAL DEFINITIVO ---
    // O texto [ESPAÇO / Z] vai aparecer sempre que a interação estiver liberada,
    // seja para "pular" a digitação ou para avançar de frase.
    
    if (pode_interagir) {
        draw_set_color(c_yellow);
        draw_text(_gui_w / 2, _text_y + 80, "[ SPACEBAR / Z ]");
    }

    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
}