/// @description 
// se agrega al score de base 50
#region//score y destruir
score += 100;
instance_destroy();
#endregion
#region// dibujar puntos
instance_create_layer(x,y,"Instances",obj_puntos1);
#endregion
