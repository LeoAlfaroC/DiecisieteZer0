/// @description Insert description here
// You can write your code in this editor

if(collision_circle(x,y,50,obj_player, false, false))
{
	isClose = true;
}
else
{
	isClose = false;
}
if(interactActive){
	interface_id = instance_create_layer(0,0,"Show_Actions", obj_img)
	interactActive = false;
}