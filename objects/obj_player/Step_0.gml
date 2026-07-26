var move_right = keyboard_check(ord("D"));
var move_left = -keyboard_check(ord("A"));

var move_x = move_right + move_left;

x += move_x * move_speed;

if move_x =0
{
	Object19.move_speed = 0;
}else
{
	Object19.move_speed = 2;
}



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


if (move_x > 0) {
	distance_walked_right += move_x * move_speed;
	
	if (distance_walked_right >= spawn_threshold) {
		distance_walked_right -= spawn_threshold;
		
		var spawn_x = x + viewx + irandom_range(50, 300);
		
		var roll = irandom_range(1, 100);
		
		if (roll <= 25) {
			instance_create_layer(spawn_x, y - 30, "enemys", obj_funcionario);
		}
		else {
			var enemy_type = choose(obj_enemy_hater, obj_enemy_streamer);
			instance_create_layer(spawn_x, y - 30, "enemys", enemy_type);
		}
	}
}


