/// @description cargar archivo ini

ini_open("Guardado.ini");
obj_player.x = ini_read_real("variables","coordena_x",0);
obj_player.y =ini_read_real("variables","coordena_y",0);
obj_game.health_rovot = ini_read_real("variables","healt_rovot",0);
obj_game.numSpawnX = ini_read_real("variables","numSpawnX",0);
obj_game.numSpawnY = ini_read_real("variables","numSpawnY",0);
obj_game.potion = ini_read_real("variables","potion",0);
obj_game.lives = ini_read_real("variables","lives",0);
obj_game.potion = ini_read_real("variables","potion",0);
obj_game.highscore = ini_read_real("variables","highscore",0);
obj_game.score = ini_read_real("variables","score",0);
ini_close();