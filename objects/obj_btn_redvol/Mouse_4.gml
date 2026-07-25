global.volume = clamp(global.volume - 1, 0, 10);
audio_master_gain(global.volume / 10);