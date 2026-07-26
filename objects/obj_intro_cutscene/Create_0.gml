text_array = [
    "What is time, anyway?",
    "We don't have time for this!",
	"We need to deliver a game before the deadline!"
];

text_index = 0;       
char_index = 0;       
char_speed = 0.25;     

// Variáveis de Estado
estado = 0;             
alpha_imagem = 0;       
velocidade_fade = 0.02; 
tempo_espera = 60;

tempo_reflexao = 180; // 180 frames = 3 segundos (rodando a 60 FPS)
pode_interagir = false;