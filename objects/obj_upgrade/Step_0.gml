atualiza_tempo();


 //segundo += global.framerate;

if global.dev = 1
{
	//global.game_spd = 1.25;
	custo = custobase - 5;
}
else if global.dev = 2
{
	//global.game_spd = 1.5;
	custo = custobase - 10;
}else if global.dev = 3
{
	//global.game_spd = 1.75;
	custo = custobase - 15;
}else if global.dev = 4
{
	//global.game_spd = 2;
	custo = custobase - 20;
}else
{
	//global.game_spd = 1;
	custo = custobase;
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
		if(timer<=0)
		{
			global.segundo -=custo;
		}
		
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

if global.segundo <=0
{
	global.segundo = 0
	room_goto(roombotaoteste);
}


var move_right = keyboard_check(ord("D"));
var move_left = -keyboard_check(ord("A"));

var move_x = move_right + move_left;

x += move_x * move_speed;


if _id = 0
{
	if(level>=5)
	{
		instance_destroy(obj_coverbg)
		//instance_destroy(obj_coverflor)
	}
}

if _id = 1
{
	if(level>=5)
	{
		instance_destroy(obj_coverplayer)
		obj_enemy.sprite_index = spr_enemy_asian_boss;
		obj_enemy_hater.sprite_index = spr_enemy_hater;
		obj_enemy_streamer.sprite_index = spr_enemy_streamer;
		obj_funcionario.sprite_index = spr_funcionario_idle;
	}
}

if _id = 2
{
	if(level>=5)
	{
		audio_resume_sound(mus_game);
	}else{
		audio_pause_sound(mus_game);
	}
}

if _id >= 3
{
	if(level>=5)
	{
		GameManager.chat = true;
	}
}







