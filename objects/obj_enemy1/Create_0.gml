/// @description
sprite_index = spr_enemigo;
image_index =0;
image_speed = 1;
image_xscale = 0.2;
image_yscale = 0.2;
#region// autodestruirse
alarm[0] = 5*room_speed;
#endregion

direccion = 1;
derecha = 2;
izquierda= -2;
//walkspd=4;
hspeed = derecha;
//image_blend = c_fuchsia;
event_inherited();
health_enemy = 100;