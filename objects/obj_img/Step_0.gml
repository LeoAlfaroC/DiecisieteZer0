/// @description Insert description here
// You can write your code in this editor

if(keyboard_check_pressed(ord("Q")))
{
	obj_player.desp = despAux;
	instance_destroy(self);
}

