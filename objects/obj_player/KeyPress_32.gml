var max_shots = 1 + global.team_count;

if (instance_number(obj_player_shot) < max_shots) {
	instance_create_layer(x, y - 20, "enemys", obj_player_shot);
	
}

#region animação do tiro do player
is_shooting = true;
sprite_index = spr_player_shooting;
image_index = 0;
#endregion


