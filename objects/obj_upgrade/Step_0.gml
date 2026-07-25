atualiza_tempo();


 //segundo += global.framerate;

if global.dev = 1
{
	global.game_spd = 1.25;
}
else if global.dev = 2
{
	global.game_spd = 1.5;
}else if global.dev = 3
{
	global.game_spd = 1.75;
}else if global.dev = 4
{
	global.game_spd = 2;
}else
{
	global.game_spd = 1;
}

if(compra = true)
{
	timer += global.framerate;

	//timer%=tempo;
	if(timer > tempo)
	{
		timer = 0;
		compra = false;
		level++;
		if(level>=5)
		{
			compra = false;
			timer = tempo;
		}
	}
}

var mousesobre = position_meeting(mouse_x,mouse_y,id);
var mouseclique = mouse_check_button_pressed(mb_left);

if(mousesobre)
{
	if(mouseclique)
	{
		compra = true;
		
		
	}
}

if(level>=objetivo)
{
	level = objetivo;
}

if(global.dev>=4)
	{
		global.dev = 4;
	}






