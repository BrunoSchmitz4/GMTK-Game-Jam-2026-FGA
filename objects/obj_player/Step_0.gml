var move_right = keyboard_check(ord("D"));
var move_left = -keyboard_check(ord("A"));
var jump = keyboard_check_pressed(ord("W"));

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


vertical_speed += gravity_force;


if (!place_meeting(x, y + vertical_speed, obj_collision_floor))
{
    y += vertical_speed;
}
else
{
    while (!place_meeting(x, y + sign(vertical_speed), obj_collision_floor))
    {
        y += sign(vertical_speed);
    }

   vertical_speed = 0;
}


on_ground = place_meeting(x, y + 1, obj_collision_floor);


if (jump && on_ground) {
    vertical_speed = -jump_force;
    on_ground = false;
}
show_debug_message("y = " + string(y));


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