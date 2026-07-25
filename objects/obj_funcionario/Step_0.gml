if (recrutado) {
	var _distancia = point_distance(x, y, target.x, target.y);
	
	if (_distancia > distancia_seguir) {
		var _direcao = point_direction(x, y, target.x, target.y);
		x += lengthdir_x(move_speed, _direcao);
		y += lengthdir_y(move_speed, _direcao);

		image_xscale = (target.x < x) ? -1 : 1
	}

}