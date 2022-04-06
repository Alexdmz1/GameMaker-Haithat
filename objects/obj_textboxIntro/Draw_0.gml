/// @description Dibuja el texto en pantalla

draw_set_color(c_white);
draw_set_font(fnt_texbox1);
draw_text(x, y, string_hash_to_newline(message_draw));

