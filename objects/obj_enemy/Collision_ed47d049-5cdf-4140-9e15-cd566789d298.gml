/// @description Insert description here
// You can write your code in this editor

obj_player.hp-=40;
obj_player.isHit = true;

if(x-obj_player.x<0)x-=30;

if(x-obj_player.x>0)x+=30;

if(y-obj_player.y<0)y+=30;

if(y-obj_player.y>0)y-=30;
