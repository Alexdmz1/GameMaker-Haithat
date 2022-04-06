/// @description
#region// score y destruir enemy
score +=100;

instance_destroy();
#endregion
#region// dibujar puntuacion
instance_create_layer(x,y,"Instances",obj_puntos1);
#endregion