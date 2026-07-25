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


var _max_scroll = max(0, array_length(global.chat_messages) * line_height - chat_height);
chat_manual_offset = clamp(chat_manual_offset, 0, _max_scroll);

