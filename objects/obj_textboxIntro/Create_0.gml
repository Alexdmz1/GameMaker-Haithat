/// @description Texto de la introducción.
message[0] = "Hace mucho tiempo en la aldea de Zunt al sur de Wang,\nse llevó acabo una terrible invasión.";
message[1] = "Gigantes que venían de otro mundo, tomaron como reenes a personas,\nasesinando muchas de ellas.";
message[2] = "Esto debido a las pociones que poseen los ancianos de esta aldea,\nya que estas alargan la vida.";
message[3] = "cuando los ancianos se percataron de la debilidad de los gigantes,\ncrearon alguien especial.";
message[4] = "Un guerrero llamado Hait-Hat,\nel cuál realizará el plan de los ancianos de la aldea,\npara destruir a los gigantes.";
message[5] = "Hait-Hat viaja por portales hechos por los gigantes,\n recuperando pociones y esclavos aldeanos.";
message[6] = "Solo él puede rescatar a la aldea de los gigantes...";
message[7] = "                                                ";
message[8] = "                                                ";
message[9] = "                                                ";


message_current = 0; //Primer numero del arreglo
message_end = 9; //El último, con el que termina el texto
message_draw = ""; //Lo que hay que escribir. Está en blanco ahora
increase = 0.5; //Velocidad con la que pasa el texto
characters = 0; //Cuántos caracteres se han dibujado

message_length = string_length(message[message_current]); //Cantidad de caracteres del mensaje actual

next_m = false; //Avanzar al siguiente mensaje
ok = false;
text = 0;

