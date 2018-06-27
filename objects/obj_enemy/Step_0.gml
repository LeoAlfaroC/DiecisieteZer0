/// @description Insert description here
// You can write your code in this editor

if(hitPoints<=0){
instance_destroy(self);
}

if(golpeado == true)
{
	
if(x-obj_player.x<0)x-=50;

if(x-obj_player.x>0)x+=50;

if(y-obj_player.y<0)y+=50;

if(y-obj_player.y>0)y-=50;
	
	
image_blend=c_red;
alarm[0] = 0.3*room_speed;
golpeado = false;
}

if(collision_circle(x,y,100,obj_player, false, false))
{
	if(x-obj_player.x<0)
	{
		if tilemap_get_at_pixel("TileLayerColisionBlocks",bbox_right + 1, y + sprite_height/2) ==0 x+=desp;
	}
	if(x-obj_player.x>0)
	{
		if tilemap_get_at_pixel("TileLayerColisionBlocks",bbox_left - 1, y + sprite_height/2) == 0 x-=desp;
	}
	if(y-obj_player.y<0)
	{
		if tilemap_get_at_pixel("TileLayerColisionBlocks", sprite_width/2 + x, bbox_bottom + 1) == 0 y+=desp;
	}
	if(y-obj_player.y>0)
	{
		if tilemap_get_at_pixel("TileLayerColisionBlocks", sprite_width/2 + x, bbox_top - 1) == 0  y-=desp;
	}
		
}