if keyboard_check(ord("W")){
	if tilemap_get_at_pixel("TileLayerColisionBlocks",bbox_left - 1, y + sprite_height/2) != 0 x = x + 1;
	if tilemap_get_at_pixel("TileLayerColisionBlocks",bbox_right + 1, y + sprite_height/2) != 0 x = x - 1;//mod podria ser en vez de sumarle 1... mo tan importante
	if tilemap_get_at_pixel("TileLayerColisionBlocks",bbox_left, bbox_top - desp) != 0 || tilemap_get_at_pixel("TileLayerColisionBlocks",bbox_right, bbox_top - desp) != 0{
		if (bbox_top % 32) <= 10 y = y - (bbox_top % 32) + 1; // 32 ---> TileWidth
		else y = y - (32 - (bbox_top % 32)) + 1; // 32 ---> TileWidth
	}
	else{
		y -= desp;
	}
	sprite_index = spr_playerUp;
	image_speed = 1;
}
if keyboard_check(ord("A")){
	if tilemap_get_at_pixel("TileLayerCOlisionBlocks", x + sprite_width/2, bbox_top - 1) != 0 y = y + 1;
	if tilemap_get_at_pixel("TileLayerCOlisionBlocks", x + sprite_width/2, bbox_bottom + 1) != 0 y = y - 1;
	if tilemap_get_at_pixel("TileLayerColisionBlocks",bbox_left - desp, bbox_top) != 0 || tilemap_get_at_pixel("TileLayerColisionBlocks",bbox_left - desp, bbox_bottom) != 0{
		if (bbox_left % 32) <= 10 x = x - (bbox_left % 32) + 1; // 32 ---> TileWidth
		else x = x - (32 - (bbox_left % 32)) + 1; // 32 ---> TileWidth
	}
	else{
		x -= desp;
	}
	sprite_index = spr_playerSide;
	image_xscale = 1;
	image_speed = 1;
}
if keyboard_check(ord("S")){
	if tilemap_get_at_pixel("TileLayerColisionBlocks",bbox_left - 1, y + sprite_height/2) != 0 x = x + 1;
	if tilemap_get_at_pixel("TileLayerColisionBlocks",bbox_right + 1, y + sprite_height/2) != 0 x = x - 1; // Compensacion por cambio de width en spirte
	if tilemap_get_at_pixel("TileLayerColisionBlocks",bbox_left, bbox_bottom + desp) != 0 || tilemap_get_at_pixel("TileLayerColisionBlocks",bbox_right, bbox_bottom + desp) != 0{
		if (bbox_bottom % 32) <= 10 y = y + (bbox_bottom % 32) - 1; // 32 ---> TileWidth
		else y = y + (32 - (bbox_bottom % 32)) - 1; // 32 ---> TileWidth
	}
	else{
		y += desp;
	}
	sprite_index = spr_playerDown;
	image_speed = 1;
}
if keyboard_check(ord("D")){
	if tilemap_get_at_pixel("TileLayerCOlisionBlocks", x + sprite_width/2, bbox_top - 1) != 0 y = y + 1; //sprite mas alto respecto a x
	if tilemap_get_at_pixel("TileLayerCOlisionBlocks", x + sprite_width/2, bbox_bottom + 1) != 0 y = y - 1;
	if tilemap_get_at_pixel("TileLayerColisionBlocks",bbox_right + desp, bbox_top) != 0 || tilemap_get_at_pixel("TileLayerColisionBlocks",bbox_right + desp, bbox_bottom) != 0{
		if (bbox_right % 32) <= 10 x = x + (bbox_right % 32) - 1; // 32 ---> TileWidth
		else x = x + (32 - (bbox_right % 32)) - 1; // 32 ---> TileWidth
	}
	else{
		x += desp;
	}
	sprite_index = spr_playerSide;
	image_xscale = -1;
	image_speed = 1;
}

if keyboard_check(vk_nokey){
	image_speed = 0;
	image_index = 0;
}

show_debug_message(string(y-sprite_height/2))
show_debug_message(string(tilemap_get_at_pixel("TileLayerColisionBlocks",bbox_right + desp, bbox_top))+ "rightBB: "+string(bbox_right));
show_debug_message(string(tilemap_get_at_pixel("TileLayerColisionBlocks",bbox_left - desp, bbox_top)) + "lefttBB: "+string(bbox_left));
show_debug_message(string(tilemap_get_at_pixel("TileLayerColisionBlocks",bbox_left, bbox_top- desp)) + "topBB: "+string(bbox_top));
show_debug_message(string(tilemap_get_at_pixel("TileLayerColisionBlocks",bbox_left, bbox_bottom + desp)) + "bottomtBB: "+string(bbox_bottom));


if abs(x - caja.x) < 40 and abs(y - caja.y)  < 40 {
	alerta_caja.visible = true;
} else {
	alerta_caja.visible = false;
}

