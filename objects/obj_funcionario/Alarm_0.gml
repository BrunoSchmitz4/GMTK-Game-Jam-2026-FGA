var _index = array_get_index(global.team_queue, id);

if (_index != -1)
{
    array_delete(global.team_queue, _index, 1);
    if (_index < array_length(global.team_queue))
    {
        var _next_dev = global.team_queue[_index];
        _next_dev.target = (_index > 0) ? global.team_queue[_index - 1] : obj_player;
    }
}

global.team_count--;
instance_destroy();