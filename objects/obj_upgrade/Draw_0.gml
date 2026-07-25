draw_self();
draw_sprite(Item, 0, x, y-15);

draw_set_valign(1);
draw_set_halign(1);

var x1 = x;
var y1 = y+30;

draw_ellipse_color(x1-24,y1 - 12,x1+24,y1 + 12, c_dkgray,c_dkgray,false);
draw_text(x1,y1,string(level) +"/"+ string(objetivo));

//draw_text(20,20,global.moeda);




draw_set_valign(-1);
draw_set_halign(-1);



var larg = sprite_width/1.5;
var x2 = x+ 40;
var y2 = y - 32;
var x3 = x2 + larg;
var y3 = y2 + sprite_height/4;
var progresso = (timer/tempo) * larg;

draw_rectangle_color(x2-1,y2-1,x3+1,y3+1,c_black,c_black,c_black,c_black,false);
draw_rectangle_color(x2,y2,x3,y3,c_gray,c_gray,c_gray,c_gray,false);
draw_rectangle_color(x2,y2,x2+progresso,y3,c_green,c_green,c_green,c_green,false);

var leva = tempo-timer;

draw_rectangle_color(x+larg+10,y+15,x+35,y+40,c_green,c_green,c_green,c_green,false);
draw_text(x+45,y+18,"time:"+ string(custo)); 
//draw_text(x+45,y+18,"time:"+ string(leva)); 




if _id = 0
{
	draw_set_halign(1);
	draw_text(x+100,y-7,string("Background color"));
	draw_set_halign(1);
}else if _id = 1
{
	draw_set_halign(1);
	draw_text(x+100,y-7,string("Character Sprite"));
	draw_set_halign(1);
}else if _id = 2
{
	draw_set_halign(1);
	draw_text(x+100,y-7,string("Music and Sound"));
	draw_set_halign(1);
}

draw_text(20,20,global.dev)

var mult = global.dev;

if mult = 1
{
	draw_sprite(spr_mult1, 0, x, y-15);
}else if mult = 2
{
	draw_sprite(spr_mult2, 0, x, y-15);
}else if mult = 3
{
	draw_sprite(spr_mult3, 0, x, y-15);
}else if mult = 4
{
	draw_sprite(spr_mult4, 0, x, y-15);
}
