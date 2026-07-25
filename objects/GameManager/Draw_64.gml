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