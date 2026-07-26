
text_array = [
    "Deadline.",
    "Time's up.",
    "Is this the game you wanted?",
    "Either way, it doesn't matter.",
    "What matters is that it's YOUR game, so there are no losers."
];

text_index = 0;       // Qual frase da lista está ativa
char_index = 0;       // Quantos caracteres já foram digitados
char_speed = 0.25;     // Velocidade da digitação (ex: 0.5 = 1 letra a cada 2 frames)

//imagem da ampulheta

estado = 0;             // 0 = Fade in, 1 = Espera, 2 = Texto
alpha_imagem = 0;       // Começa invisível
velocidade_fade = 0.02; // Velocidade do fade in
tempo_espera = 60;      // Tempo de pausa antes do texto (60 = 1 segundo a 60fps)