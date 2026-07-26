var _ultimo_frame = sprite_get_number(animlogo) - 1; 

// ---------------------------------------------------
// LÓGICA DOS ESTADOS INICIAIS
// ---------------------------------------------------
if (estado == 0) {
    // ESTADO 0: Fade In (A imagem fica parada no primeiro frame)
    alpha_animacao += velocidade_fade;
    
    if (alpha_animacao >= 1) {
        alpha_animacao = 1;
        estado = 1; // Fade in terminou, libera a animação!
    }
}
else if (estado == 1) {
    // ESTADO 1: Agora sim, roda a animação até o final!
    if (frame_animacao < _ultimo_frame) {
        frame_animacao += 0.2; // Velocidade da animação
    } else {
        frame_animacao = _ultimo_frame; // Trava no último frame
        estado = 2; // Acabou a animação, vai pro Fade Out
    }
}
else if (estado == 2) {
    // ESTADO 2: Fade Out da Animação Inicial
    alpha_animacao -= velocidade_fade;
    
    if (alpha_animacao <= 0) {
        alpha_animacao = 0;
        tempo_espera = 30; // Pausa rápida na tela preta antes da logo GMTK
        estado = 3;
    }
}

else if (estado == 3) {
    // ESTADO 3: Espera na tela preta
    tempo_espera--;
    
    if (tempo_espera <= 0) {
        estado = 4;
    }
}

else if (estado == 4) {
    // ESTADO 4: Fade In da logo GMTK
    alpha_gmtk += velocidade_fade;
    
    if (alpha_gmtk >= 1) {
        alpha_gmtk = 1;
        tempo_espera = 90; 
        estado = 5;
    }
}
else if (estado == 5) {
    // ESTADO 5: Espera a logo da GMTK
    tempo_espera--;
    
    if (tempo_espera <= 0) {
        estado = 6;
    }
}
else if (estado == 6) {
    // ESTADO 6: Fade Out da logo GMTK
    alpha_gmtk -= velocidade_fade;
    
    if (alpha_gmtk <= 0) {
        alpha_gmtk = 0;
        tempo_espera = 60; 
        estado = 7;
    }
}
else if (estado == 7) {
    // ESTADO 7: Espera na tela preta
    tempo_espera--;
    
    if (tempo_espera <= 0) {
        estado = 8;
    }
}
else if (estado == 8) {
    // ESTADO 8: Fade In da Capa do Jogo
    alpha_capa += velocidade_fade;
    
    if (alpha_capa >= 1) {
        alpha_capa = 1;
        estado = 9;
    }
}
else if (estado == 9) {
    // ESTADO 9: Capa apareceu. Texto pisca e espera o jogador
    alpha_texto += (0.05 * direcao_piscar);
    
    if (alpha_texto >= 1) {
        alpha_texto = 1;
        direcao_piscar = -1; 
    } 
    else if (alpha_texto <= 0) {
        alpha_texto = 0;
        direcao_piscar = 1; 
    }
    
    if (keyboard_check_pressed(vk_anykey) || mouse_check_button_pressed(mb_any)) {
        room_goto(room_menu); 
    }
}