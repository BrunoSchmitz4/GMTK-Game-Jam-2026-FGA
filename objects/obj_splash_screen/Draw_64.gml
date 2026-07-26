var _gui_w = display_get_gui_width();
var _gui_h = display_get_gui_height();

var _centro_x = _gui_w / 2;
var _centro_y = _gui_h / 2;

// 1. Desenha a Animação Inicial (Estados de 0 a 2)
if (estado <= 2) {
    // O frame_animacao garante que a sprite seja animada quadro a quadro
    draw_sprite_ext(animlogo, frame_animacao, _centro_x, _centro_y, 1, 1, 0, c_white, alpha_animacao);
}

// 2. Desenha a Logo da GMTK (Estados de 4 a 6)
if (estado >= 4 && estado <= 6) {
    draw_sprite_ext(spr_logo_gmtk, 0, _centro_x, _centro_y, escala_gmtk, escala_gmtk, 0, c_white, alpha_gmtk);
}

// 3. Desenha a Capa do Jogo e o Texto (Estados 8 e 9)
if (estado >= 8) {
    draw_sprite_ext(spr_capa, 0, _centro_x, _centro_y, 1, 1, 0, c_white, alpha_capa);
    
    if (estado == 9) {
        draw_set_font(-1); 
        draw_set_halign(fa_center);
        draw_set_valign(fa_middle);
        draw_set_color(c_white);
        
        draw_set_alpha(alpha_texto); 
        draw_text(_centro_x, _gui_h - 100, "Press any key");
        
        draw_set_alpha(1); 
        draw_set_halign(fa_left);
        draw_set_valign(fa_top);
    }
}