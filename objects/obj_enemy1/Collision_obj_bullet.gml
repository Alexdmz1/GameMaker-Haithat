/// @description  score y efecto
#region// score y efecto flare
score +=10;
effect_create_below(ef_flare,x,y,0.1,c_fuchsia);
#endregion
#region// dibujar puntos
instance_create_layer(x,y,"Instances",obj_puntos);
#endregion