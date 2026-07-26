global.segundo -= global.gamesegundo;
var s = global.segundo%60;
var m = (global.segundo div 60)%60;
var h = (global.segundo div 60) div 60;

var seg = s>9? s : "0" + string(s);
var _min = m>9? m : "0" + string(m);
var hr = h>9? h : "0" + string(h);

//draw_text(260,20,string("{0}:{1}:{2}",hr, _min, seg));
draw_text(320,65,string(global.segundo) + "s");

draw_text(320, 82, "Team: " + string(global.team_count));

if chat = true
{
    var _sep = -1;
    var _target_scroll = max(0, total_chat_height - chat_height) - chat_manual_offset;
    chat_scroll = lerp(chat_scroll, _target_scroll, 0.1);

    draw_set_halign(fa_left);

    var _cursor_y = chat_y - chat_scroll;

    for (var i = 0; i < array_length(global.chat_messages); i++)
    {
        var _h = string_height_ext(global.chat_messages[i], _sep, chat_width);

        if (_cursor_y + _h >= chat_y && _cursor_y <= chat_y + chat_height)
        {
            draw_text_ext(chat_x, _cursor_y, global.chat_messages[i], _sep, chat_width);
        }

        _cursor_y += _h;
    }
}