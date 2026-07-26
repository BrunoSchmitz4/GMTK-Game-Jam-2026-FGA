var move_right = keyboard_check(ord("D"));
var move_left = -keyboard_check(ord("A"));
var jump = keyboard_check(ord("W"))

var move_x = move_right + move_left;

x += move_x * move_speed;

/*if (move_x != 0)
#region lógica da colisão do player com o chão para o pulo

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

#endregion

#region lógica pulo

if (jump && on_ground) {
    vertical_speed = -jump_force;
    on_ground = false;
}

#endregion*/