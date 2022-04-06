/// @description  autodestruccion,barra vida
#region// autodestruirse
alarm[0] = 10*room_speed
#endregion
#region// evento inherited
event_inherited();
#endregion

#region//speed y HP
HP = 0.5;
speed = 1;

originalSpeed = speed;
#endregion
//inmuneToLaser = false;
#region//eleccion de sprite
sprite_index = spr_rovo3;
image_speed = 1;
image_index = 0;
//image_blend = c_red;
#endregion

#region//dirección 
direction = irandom_range(0,359);
image_angle = irandom_range(0,359);
#endregion
#region// barra de vida inicial
health_enemy = 100;
#endregion

