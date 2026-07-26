if (estado == 0) {
    // ESTADO 0: Faz o Fade in da ampulheta
    alpha_imagem += velocidade_fade;
    
    if (alpha_imagem >= 1) {
        alpha_imagem = 1;
        estado = 1; // Vai para a pausa
    }
} 
else if (estado == 1) {
    // ESTADO 1: Espera o tempo acabar
    tempo_espera--;
    
    if (tempo_espera <= 0) {
        estado = 2; // Vai para o texto
    }
} 
else if (estado == 2) {
	var _current_text = text_array[text_index];
	var _text_length = string_length(_current_text);

	// Avança a contagem de caracteres até o tamanho máximo da frase
	if (char_index < _text_length) {
	    char_index += char_speed;
    
	    // Toca um 'beep' suave a cada nova letra
	    if (floor(char_index) != floor(char_index - char_speed)) {
			audio_play_sound(snd_text_beep, 1, false);
	    }
	}

	// Tecla para interagir
	var _key_pressed = keyboard_check_pressed(vk_space) || keyboard_check_pressed(ord("Z")) || keyboard_check_pressed(vk_enter);

	if (_key_pressed) {
	    // REGRA 1: Se ainda está digitando, completa a frase na hora
	    if (char_index < _text_length) {
	        char_index = _text_length;
	    } 
	    // REGRA 2: Se já terminou de digitar, passa para a próxima frase
	    else {
	        text_index++;
	        char_index = 0;
        
	        // Se as frases acabaram, transiciona para a tela final com o Chat Log
	        if (text_index >= array_length(text_array)) {
	             room_goto(room_ending); 
	        }
	    }
	}
}