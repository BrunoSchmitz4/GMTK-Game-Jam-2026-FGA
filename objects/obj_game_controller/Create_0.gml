global.volume = 2

global.max_funcionarios = 3;
global.funcionarios_spawnados = 0;

audio_master_gain(global.volume / 10)

audio_play_sound(mus_game, 0, true);

global.team_count = 0;
global.team_queue = [];