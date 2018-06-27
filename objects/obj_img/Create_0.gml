/// @description Insert description here
// You can write your code in this editor

despAux = obj_player.desp;
obj_player.desp = 0;

image_xscale = 5;
image_yscale = 5;

x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) div 2;
y = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) div 2;

