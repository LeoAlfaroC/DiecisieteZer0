

if(keyboard_check_pressed(ord("1")))
{
	pos++;
	cod = cod + "1 ";
}
if(keyboard_check_pressed(ord("2")))
{
	pos++;
	cod = cod + "2 ";
}
if(keyboard_check_pressed(ord("3")))
{
	pos++;
	cod = cod + "3 ";
}
if(keyboard_check_pressed(ord("4")))
{
	pos++;
	cod = cod + "4 ";
}
if(keyboard_check_pressed(ord("5")))
{
	pos++;
	cod = cod + "5 ";
}
if(keyboard_check_pressed(ord("6")))
{
	pos++;
	cod = cod + "6 ";
}
if(keyboard_check_pressed(ord("7")))
{
	pos++;
	cod = cod + "7 ";
}
if(keyboard_check_pressed(ord("8")))
{
	pos++;
	cod = cod + "8 ";
}
if(keyboard_check_pressed(ord("9")))
{
	pos++
	cod = cod + "9 ";
}
if(keyboard_check_pressed(ord("Q")))
{
	//show_debug_message(string(despAux))
	obj_player.desp = despAux;
	instance_destroy(self);
}
if(cod==codResp || cod == "correct")
{
	if(alarmGo==false){alarm[0] = room_speed*2; alarmGo = true}
	obj_player.desp = despAux;
	cod = "correct";
	locked = false;
}
if(string_length(cod)>9){
	cod = "";
}

