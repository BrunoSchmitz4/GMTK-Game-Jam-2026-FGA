var move_right =   keyboard_check(ord("D"));
var move_left  = - keyboard_check(ord("A"));

var move_x = move_right + move_left;

x += move_x * move_speed;