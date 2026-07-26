x += move_speed;

var _view_left = obj_player.x - obj_player.viewx;
var _view_right = obj_player.x + obj_player.viewx;

if (x < _view_left || x > _view_right) {
	instance_destroy();
}
