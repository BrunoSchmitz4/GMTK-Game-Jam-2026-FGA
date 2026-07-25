if (!recrutado)
{
    recrutado = true;
	global.dev++

    if (array_length(global.team_queue) > 0)
    {
        target = global.team_queue[array_length(global.team_queue) - 1];
    }
    else
    {
        target = obj_player;
    }

    array_push(global.team_queue, id);
    global.team_count++;

    alarm[0] = irandom_range(15, 20) * room_speed; // sai da equipe depois de 15-20s
}