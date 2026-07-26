/*if keyboard_check(vk_enter)
{
	room_goto(roombotaoteste);
}*/

var _mouse_over_chat = (mouse_x >= chat_x && mouse_x <= chat_x + chat_width &&
                         mouse_y >= chat_y && mouse_y <= chat_y + chat_height);

if (_mouse_over_chat) {
	if (mouse_wheel_up()) {
	chat_manual_offset += line_height * 2;
}

	if (mouse_wheel_down()) {
		chat_manual_offset -= line_height * 2;
	}
}


var _sep = -1;
total_chat_height = 0;

for (var i = 0; i < array_length(global.chat_messages); i++)
{
    total_chat_height += string_height_ext(global.chat_messages[i], _sep, chat_width);
}

var _max_scroll = max(0, total_chat_height - chat_height);
chat_manual_offset = clamp(chat_manual_offset, 0, _max_scroll);

