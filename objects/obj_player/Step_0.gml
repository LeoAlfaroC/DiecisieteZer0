if (keyboard_check(ord("W")) and place_free(x,y - colisionSpeed)){
	if tilemap_get_at_pixel("TileLayerColisionBlocks",bbox_left - 1, y + sprite_height/2) != 0 x = x + 1;
	if tilemap_get_at_pixel("TileLayerColisionBlocks",bbox_right + 1, y + sprite_height/2) != 0 x = x - 1;//mod podria ser en vez de sumarle 1... mo tan importante
	if tilemap_get_at_pixel("TileLayerColisionBlocks",bbox_left, bbox_top - desp) != 0 || tilemap_get_at_pixel("TileLayerColisionBlocks",bbox_right, bbox_top - desp) != 0{
		if (bbox_top % 32) <= 10 y = y - (bbox_top % 32) + 1; // 32 ---> TileWidth
		else y = y - (32 - (bbox_top % 32)) + 2; // 32 ---> TileWidth
	}
	else{
		y -= desp;
	}
	image_xscale = -1;
	if(image_index!= 3 and image_index!= 4 and image_index!= 5)
	{
		image_index = 3; //prueba
	}
	if(alarm[0] <= 0)
	{
		alarm[0] = room_speed/5;
		image_index+=1;
		if(image_index > 5)image_index = 3;	
	}
	xFront = x;
	yFront = y - 40;
}
if (keyboard_check(ord("A")) and place_free(x - colisionSpeed,y)){
	if tilemap_get_at_pixel("TileLayerCOlisionBlocks", x + sprite_width/2, bbox_top - 1) != 0 y = y + 1;
	if tilemap_get_at_pixel("TileLayerCOlisionBlocks", x + sprite_width/2, bbox_bottom + 1) != 0 y = y - 1;
	if tilemap_get_at_pixel("TileLayerColisionBlocks",bbox_left - desp, bbox_top) != 0 || tilemap_get_at_pixel("TileLayerColisionBlocks",bbox_left - desp, bbox_bottom) != 0{
		if (bbox_left % 32) <= 10 x = x - (bbox_left % 32) + 1; // 32 ---> TileWidth
		else x = x - (32 - (bbox_left % 32)) + 2; // 32 ---> TileWidth
	}
	else{
		x -= desp;
	}
	image_xscale = 1;
	if(image_index!= 6 and image_index!= 7 and image_index!= 8)
	{
		image_index = 6; //prueba
	}
	if(alarm[0] <= 0)
	{
		alarm[0] = room_speed/10;
		image_index+=1;
		if(image_index > 8)image_index = 6;	
	}
	xFront = x - 20;
	yFront = y;
}
if (keyboard_check(ord("S")) and place_free(x,y + colisionSpeed)){
	if tilemap_get_at_pixel("TileLayerColisionBlocks",bbox_left - 1, y + sprite_height/2) != 0 x = x + 1;
	if tilemap_get_at_pixel("TileLayerColisionBlocks",bbox_right + 1, y + sprite_height/2) != 0 x = x - 1; // Compensacion por cambio de width en spirte
	if tilemap_get_at_pixel("TileLayerColisionBlocks",bbox_left, bbox_bottom + desp) != 0 || tilemap_get_at_pixel("TileLayerColisionBlocks",bbox_right, bbox_bottom + desp) != 0{
		if (bbox_bottom % 32) <= 10 y = y + (bbox_bottom % 32) - 1; // 32 ---> TileWidth
		else y = y + (32 - (bbox_bottom % 32)) - 2; // 32 ---> TileWidth
	}
	else{
		y += desp;
	}
	if(image_index!= 1 and image_index!= 2 and image_index!= 0)
	{
		image_index = 0; //prueba
	}
	if(alarm[0] <= 0)
	{
		alarm[0] = room_speed/5;
		image_index+=1;
		if(image_index > 2)image_index = 0;	
	}
	xFront = x;
	yFront = y + 40;
}
if (keyboard_check(ord("D")) and place_free(x + colisionSpeed,y)){
	if tilemap_get_at_pixel("TileLayerCOlisionBlocks", x + sprite_width/2, bbox_top - 1) != 0 y = y + 1; //sprite mas alto respecto a x
	if tilemap_get_at_pixel("TileLayerCOlisionBlocks", x + sprite_width/2, bbox_bottom + 1) != 0 y = y - 1;
	if tilemap_get_at_pixel("TileLayerColisionBlocks",bbox_right + desp, bbox_top) != 0 || tilemap_get_at_pixel("TileLayerColisionBlocks",bbox_right + desp, bbox_bottom) != 0{
		if (bbox_right % 32) <= 10 x = x + (bbox_right % 32) - 1; // 3s2 ---> TileWidth
		else x = x + (32 - (bbox_right % 32)) - 2; // 32 ---> TileWidth
	}
	else{
		x += desp;
	}
	image_xscale = -1;
	if(image_index!= 6 and image_index!= 7 and image_index!= 8)
	{
		image_index = 6; //prueba
	}
	if(alarm[0] <= 0)
	{
		alarm[0] = room_speed/10;
		image_index+=1;
		if(image_index > 8)image_index = 6;	
	}
	xFront = x + 20;
	yFront = y;
}

if keyboard_check_pressed(ord("E")){
	if(obj_testInteract.isClose && !instance_exists(obj_codInteract))
	{
		obj_testInteract.interactActive = true;
	}
}

if keyboard_check_pressed(ord("2")){
	if(obj_HUD.drawListInventory)
	{
		obj_HUD.drawListInventory = false;
	}
	else
	{
		obj_HUD.drawListInventory = true;
	}
}

if keyboard_check_pressed(vk_space){
	
	isAttacking = true;
	if(collision_line(x,y,xFront,yFront,obj_enemy, false, true)){
		obj_enemy.hitPoints -= 30;
	}
	if(collision_line(x,y,xFront,yFront,obj_obstacle, false, true)){
		obj_obstacle.hitPoints -= 30;
	}
}

if keyboard_check(vk_nokey){
	if(image_index<=2){image_index = 1;}
	if(image_index<=5 && image_index>=3){image_index = 4;}
	if(image_index>=6){image_index = 7;}
}


