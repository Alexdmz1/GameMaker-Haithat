/// @description efecto, score, dibujar puntos
#region// efecto y score
effect_create_below(ef_flare,x,y,0.1,c_orange);
score += 50;
#endregion
#region// dibujar puntos
instance_create_layer(x,y,"Instances",obj_puntos);
#endregion