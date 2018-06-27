/// @description Insert description here
// You can write your code in this editor



if(drawListInventory and sizeInventory>0)
{
	if(keyboard_check_pressed(vk_up))
	{	
		ListPos++;
		if(ListPos+1>sizeInventory)
		{
			ListPos = 0;
		}
		for(var i = 0; i < sizeInventory; i++)
		{
		show_debug_message(ListInventory[i])
		}
	}
	if(keyboard_check_pressed(vk_down))
	{	
		ListPos--;
		if(ListPos<0)
		{
			ListPos = sizeInventory-1;
		}
	}
}