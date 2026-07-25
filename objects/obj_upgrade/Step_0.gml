atualiza_tempo();

//segundo += global.framerate;

/* (keyboard_check(vk_space))
{
	global.game_spd = 2;
}
else
{
	global.game_spd = 1;
}*/

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
		/*if(timer <=0)
		{
			global.segundo -= custobase;
		}*/
	}
}

if(level>=objetivo)
{
	level = objetivo;
}