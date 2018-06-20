/// @description Insert description here
// You can write your code in this editor

draw_sprite(spr_HUD, 0, 0, 0);
//draw_rectangle(ListInvOriginX,ListInvOriginY,ListInvOriginX+90,ListInvOriginY+20,1)
if(drawListInventory)
{	
	var col = make_color_rgb(0,230,0)
		draw_rectangle_color(ListInvOriginX,ListInvOriginY-ListPos*25,ListInvOriginX+90,ListInvOriginY-ListPos*25+20,col,col,col,col,0)
	col = make_color_rgb(66,125,169)
	for(var i = 0; i < sizeInventory; i++)
	{
		if(i!=ListPos)draw_rectangle_color(ListInvOriginX,ListInvOriginY-i*25,ListInvOriginX+90,ListInvOriginY-i*25+20,col,col,col,col,0)
		draw_text(ListInvOriginX+5,ListInvOriginY-i*25, ListInvStr[i])
	}
	if(sizeInventory == 0) draw_text(ListInvOriginX+5,ListInvOriginY-i*25, "Empty")

	
}