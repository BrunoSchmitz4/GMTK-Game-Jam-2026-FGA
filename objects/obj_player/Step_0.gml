var move_right = keyboard_check(ord("D"));
var move_left = -keyboard_check(ord("A"));

var move_x = move_right + move_left;

x += move_x * move_speed;

if (move_x != 0)
{
    if (sprite_index != spr_player_walk)
    {
        sprite_index = spr_player_walk;
		image_xscale = move_x > 0 ? 1 : -1;
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