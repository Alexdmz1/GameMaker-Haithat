/// @description variables
#region//No Utilizado
//sprite_index = spr_rovot_stand;
//image_speed = 1;
//image_xscale= -1;
//image_index = 0;
//image_blend = c_lime;
//v = 6; // velocidad
//salto = 20;
//fall = false; // cayendo
//up = false;  // cuando este saltando
#endregion
/*
estado = "normal";
sprite_index = spr_rovot_stand;
image_index = 0;
image_speed = 0;
*/


global.numSpawnX=x;
global.numSpawnY=y;

#region//Velocidad gravedad ysalto.
hsp=0;
vsp =0;
grv =0.3;
walksp=4;
jumpsp=11;
#endregion
/// @description 
event_inherited();

//bulletSpd = 6; 
guns = -1;
invincible = false;

global.health_rovot= 100;


buffer = buffer_create(10000000,buffer_fixed,1);

show_debug_message("player creado");