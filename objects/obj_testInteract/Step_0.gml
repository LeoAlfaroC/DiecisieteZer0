
if(collision_circle(x,y,50,obj_player, false, false))
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

// sampleObject.setPosition(aPosition)
// player.setPosition(anotherPositon)
//assertEqual(sampleObject.isCloseTo(player),true)
//isCloseTo(player)