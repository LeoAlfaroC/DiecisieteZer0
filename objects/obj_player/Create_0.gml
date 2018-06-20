//variables
image_speed = 0;
sprite_index = spr_player;
desp = 3; //desplazamiento
backId = layer_background_get_id("Backgrounds_1"); //sacando id del background
alarm[0] = 1
xFront = 0;
yFront = 0;
isAttacking = false;
window_set_size(700,700);
//window_set_fullscreen(true);

layer_background_xscale(backId, 3);
layer_background_yscale(backId, 3);