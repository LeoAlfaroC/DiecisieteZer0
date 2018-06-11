/// @description Insert description here
// You can write your code in this editor

draw_self();

tamanio = 40;
dx=-85;
dy=-40;

draw_rectangle(x-tamanio+dx,y-tamanio+dy,dx+x+tamanio,y+tamanio+dy, false);

if(isPresionado == 1)
{
draw_text_transformed_color(x-60,y-160,"1",3,3,0,c_red,c_red,c_red,c_red,1)
}