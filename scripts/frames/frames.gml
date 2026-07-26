#macro FRAMES 60

game_set_speed(FRAMES,gamespeed_fps);

global.game_spd = 1;

global.framerate = global.game_spd / FRAMES;

global.gamesegundo = 0;

function atualiza_tempo()
{
	global.gamesegundo = delta_time/1000000;
	global.framerate = global.gamesegundo * global.game_spd;
}