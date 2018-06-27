interactEvent = 0;
cod = "";
pos = -1;
despAux = obj_player.desp
codResp = "1 2 3 9 " 
locked = true;
timer = 0
alarmGo = false;
Resolvio = false;
image_xscale = 0.6;
image_yscale = 0.6;
key = instance_create_layer(-4,-4, "Instances", obj_key)
key.idKey = 3

obj_player.desp = 0;

x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) div 2;
y = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) div 2;

