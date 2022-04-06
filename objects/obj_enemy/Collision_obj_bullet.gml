/// @description 
#region// score y efecto smoke
score +=50;
effect_create_below(ef_smoke,x,y,100,c_lime);
#endregion

#region// dibujar puntuacion
instance_create_layer(x,y,"Instances",obj_puntos);
#endregion	

