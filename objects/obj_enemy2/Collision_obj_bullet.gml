/// @description  score y efecto flare
#region// score y efecto
effect_create_below(ef_flare,x,y,0.1,c_yellow);
score += 50;
#endregion
#region// dibujar puntos
instance_create_layer(x,y,"Instances",obj_puntos);
#endregion