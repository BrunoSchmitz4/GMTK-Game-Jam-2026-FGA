var move_right = keyboard_check(ord("D"));
var move_left = -keyboard_check(ord("A"));

var move_x = move_right + move_left;

x += move_x * move_speed;


if (move_x != 0)
{
    image_xscale = sign(move_x);
}


if (move_x != 0)
{
    if (sprite_index != spr_player_walk)
    {
        sprite_index = spr_player_walk;
        image_index = 0;
    }
}
else
{
    if (sprite_index != spr_player_idle)
    {
        sprite_index = spr_player_idle;
        image_index = 0;
    }
}

distance_walked += abs(move_x) * move_speed;

if (distance_walked >= spawn_threshold)
{
    distance_walked -= spawn_threshold;

    if (global.funcionarios_spawnados < global.max_funcionarios)
    {
        var spawn_dir = sign(move_x);
        var spawn_x = x + (spawn_dir * irandom_range(200, 400));
        spawn_x = clamp(spawn_x, 50, room_width - 50);

        instance_create_layer(spawn_x, y, "enemys", obj_funcionario);
        global.funcionarios_spawnados++;
    }
}