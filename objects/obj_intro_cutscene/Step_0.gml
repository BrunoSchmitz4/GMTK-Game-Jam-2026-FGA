if (estado == 0) {
    // Fade in
    alpha_imagem += velocidade_fade;
    if (alpha_imagem >= 1) {
        alpha_imagem = 1;
        estado = 1; 
    }
} 
else if (estado == 1) {
    // Pausa dramática
    tempo_espera--;
    if (tempo_espera <= 0) {
        estado = 2; 
    }
} 
else if (estado == 2) {
    var _current_text = text_array[text_index];
    var _text_length = string_length(_current_text);

    // EFEITO CÔMICO: A segunda frase digita mais rápido que a primeira (pânico)
    if (text_index == 1) {
        char_speed = 1.0; 
    }

    if (char_index < _text_length) {
        char_index += char_speed;
		if (floor(char_index) != floor(char_index - char_speed)) {
			audio_play_sound(snd_text_beep, 1, false);
	    }
    }
	
	// --- LÓGICA DO TEMPO DE REFLEXÃO ---
    
    // Se for a primeira frase E o timer ainda estiver rodando:
    if (text_index == 0 && tempo_reflexao > 0) {
        tempo_reflexao--;
        pode_interagir = false; // Mantém bloqueado
    } 
    // Caso contrário (já passou os 3 segundos ou já está na segunda frase):
    else {
        pode_interagir = true;  // Libera a interação
    }

    // Só detecta o botão se ele puder interagir
    var _key_pressed = (keyboard_check_pressed(vk_space) || keyboard_check_pressed(ord("Z")) || keyboard_check_pressed(vk_enter));

    if (_key_pressed && pode_interagir) {
        if (char_index < _text_length) {
            char_index = _text_length;
        } 
        else {
            text_index++;
            char_index = 0;
            
            if (text_index >= array_length(text_array)) {
                room_goto(room_game); 
            }
        }
    }
}