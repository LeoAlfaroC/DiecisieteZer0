if(keyboard_check_pressed(ord("Q")))
{
	obj_player.desp = despAux;
	instance_destroy(self);
}

if(cod==codResp || cod == "correct")
{
	if(!Resolvio)
	{
		
		key = instance_create_layer(-4,-4, "Instances", obj_key)
		key.idKey = 3
		obj_HUD.sizeInventory++;
		obj_HUD.ListInventory[obj_HUD.sizeInventory-1] = (key); // insertando llavecita
		key.itemStr = "Key" + string(key.idKey);
		obj_HUD.ListInvStr[obj_HUD.sizeInventory-1] = key.itemStr;
		
		Resolvio = true;
	}
	
	
	if(alarmGo==false){alarm[0] = room_speed*3; alarmGo = true}
	if(alarm[0]<room_speed*2){
	obj_player.desp = despAux;
	cod = "correct";
	locked = false;
	}
}

if(string_length(cod)>7)
{
	if(alarmGo==false){alarm[1] = room_speed*2; alarmGo = true}
	exit;
}

if(keyboard_check_pressed(ord("1")))
{
	cod = cod + "1 ";
}
if(keyboard_check_pressed(ord("2")))
{
	cod = cod + "2 ";
}
if(keyboard_check_pressed(ord("3")))
{
	cod = cod + "3 ";
}
if(keyboard_check_pressed(ord("4")))
{
	cod = cod + "4 ";
}
if(keyboard_check_pressed(ord("5")))
{
	cod = cod + "5 ";
}
if(keyboard_check_pressed(ord("6")))
{
	cod = cod + "6 ";
}
if(keyboard_check_pressed(ord("7")))
{
	cod = cod + "7 ";
}
if(keyboard_check_pressed(ord("8")))
{
	cod = cod + "8 ";
}
if(keyboard_check_pressed(ord("9")))
{
	cod = cod + "9 ";
}



