// ---- INPUT ----
var move_right = keyboard_check(ord("D"));
var move_left = keyboard_check(ord("A"));
var jump = keyboard_check_pressed(ord("W"));


x += (move_right - move_left) * move_speed;


vspeed += gravity;
y += vspeed;


if (y >= 620) { // MUDA ESSE NÚMERO PELO QUE VOCÊ ANOTOU!
    y = 620;    // MUDA ESSE NÚMERO PELO QUE VOCÊ ANOTOU!
    vspeed = 0;
}


if (jump && y == 620) { 
    vspeed = -jump_force;
}


if (move_right - move_left != 0) {
    image_xscale = sign(move_right - move_left);
    if (sprite_index != spr_player_walk) {
        sprite_index = spr_player_walk;
        image_index = 0;
    }
} else {
    if (sprite_index != spr_player_idle) {
        sprite_index = spr_player_idle;
        image_index = 0;
    }
}