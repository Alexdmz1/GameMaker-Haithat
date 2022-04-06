/// @description crer achivo ini

ini_open("Guardado.ini");
ini_write_real("variables","coordena_x",obj_player.x);
ini_write_real("variables","coordena_y",obj_player.y);
ini_write_real("variables","healt_rovot",obj_game.health_rovot);
ini_write_real("variables","numSpawnX",obj_game.numSpawnX);
ini_write_real("variables","numSpawnY",obj_game.numSpawnY);
ini_write_real("variables","potion",obj_game.potion);
ini_write_real("variables","lives",obj_game.lives);
ini_write_real("variables","potion",obj_game.potion);
ini_write_real("variables","highscore",obj_game.highscore);
ini_write_real("variables","score",obj_game.score);
ini_close();