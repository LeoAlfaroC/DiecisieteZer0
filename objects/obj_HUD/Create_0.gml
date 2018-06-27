/// @description Insert description here
// You can write your code in this editor
//di//display_set_gui_maximize(1,1,0,0)

display_set_gui_size(1024,768);

drawListInventory = false;
ListInvOriginX = 80;
ListInvOriginY = 680;
sizeInventory = 0;
ListPos = 0;
drawMessaveInv = false;
messageInv = "";

for(var i = 0; i < 10; i++)
{
	ListInventory[i] = -1;
	ListInvStr[i] = "";
}