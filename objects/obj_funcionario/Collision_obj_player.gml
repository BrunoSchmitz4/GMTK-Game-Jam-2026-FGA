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
}