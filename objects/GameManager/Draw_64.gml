global.segundo -= global.gamesegundo;
var s = global.segundo%60;
var m = (global.segundo div 60)%60;
var h = (global.segundo div 60) div 60;

var seg = s>9? s : "0" + string(s);
var _min = m>9? m : "0" + string(m);
var hr = h>9? h : "0" + string(h);

//draw_text(260,20,string("{0}:{1}:{2}",hr, _min, seg));
draw_text(300,20,string(global.segundo) + "s");

draw_text(260, 50, "Equipe: " + string(global.team_count) + "/" + string(global.max_funcionarios));

var _total_height = array_length(global.chat_messages) * line_height;
var _max_scroll = max(0, _total_height - chat_height);
var _target_scroll = _max_scroll - chat_manual_offset;

chat_scroll = lerp(chat_scroll, _target_scroll, 0.1);

draw_set_halign(fa_left);

for (var i = 0; i < array_length(global.chat_messages); i++)
{
    var _line_y = chat_y + (i * line_height) - chat_scroll;

    if (_line_y >= chat_y - line_height && _line_y <= chat_y + chat_height)
    {
        draw_text(chat_x, _line_y, global.chat_messages[i]);
    }
}
 