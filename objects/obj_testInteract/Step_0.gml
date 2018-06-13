
if(collision_circle(x,y,30,obj_player, false, false))
{
	isClose = true;
}
else
{
	isClose = false;
}
if(interactActive){
	instance_create_layer(0,0,"Show_Actions", obj_codInteract)
	interactActive = false;
}