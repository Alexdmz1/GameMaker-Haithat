if room == rm_story && (global.music) {
    if !(audio_is_playing(snd_story))
        audio_play_sound(snd_story, 10, 0);
} else {
    audio_stop_sound(snd_story);
}

if (room == rm_start or room == rm_tutorial) && (global.music){
    if !(audio_is_playing(snd_start))
        audio_play_sound(snd_start, 10, 0);
} else {
    audio_stop_sound(snd_start);
}

if room == rm_win && (global.music){
    if !(audio_is_playing(snd_win))
        audio_play_sound(snd_win, 10, 0);
} else {
    audio_stop_sound(snd_win);
}

if room == rm_gameover && (global.music){
    if !(audio_is_playing(snd_game_over))
        audio_play_sound(snd_game_over, 10, 0);
} else {
    audio_stop_sound(snd_game_over);
}

if (room == rm_game or room == rm_game0 or room == rm_game00) && (global.music){
    if !(audio_is_playing(snd_game))
        audio_play_sound(snd_game, 10, 0);
} else {
    audio_stop_sound(snd_game);
}

if (room == rm_game1) && (global.music){
    if !(audio_is_playing(snd_game1))
        audio_play_sound(snd_game1, 10, 0);
} else {
    audio_stop_sound(snd_game1);
}

