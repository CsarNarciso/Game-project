draw_set_color(c_orange) {
draw_text(x,y+80,EstadoTex);	
}

//draw_sprite_ext(object_get_mask(object_index),0,x,y,1,1,image_angle,c_white,1);

//draw_sprite_ext(sprite_index,image_index,x,y,1,1,rotacion_dir-270,image_blend,image_alpha);


/// @description vida,municion,linterna e interactuar


//////////////////////cuchillo motor de prueba////////////////////
draw_set_color(c_blue) {
	draw_text(x+120,y,Contador_Girot180);
	draw_text(x+60,y,Tiempo_Giro180);
//draw_text(x+60,y,Agarre_zombie_contador)
//draw_text(x+120,y,Agarre_zombie)
}
draw_self();

//PUERTAS
//puerta sala de espera
if puerta_saladeespera_interactuar = 1 {
draw_self();
draw_set_color(c_white);
draw_text(pl_00.x-70,pl_00.y+50, string(texto[numero_texto]));
draw_text(pl_00.x-70,pl_00.y+65, string(texto[2]));
draw_text(pl_00.x-70,pl_00.y+80, string(texto[3]));
}

////PERSONAJES////

//casie wihout
if numero_textoCASIE > 0 {
draw_self();
draw_set_color(c_yellow);
draw_text(pl_00.x-70,pl_00.y+50, string(textoCASIE[numero_textoCASIE]));
}
//dr house
if numero_textoDR_HOUSE > 0 {
draw_self();
draw_set_color(c_orange);
draw_text(pl_00.x-70,pl_00.y+50, string(textoDR_HOUSE[numero_textoDR_HOUSE]));
}

//////////archivos de texto /////////
//TEXTO 01
if archivo_texto1_hoja = 1 {
draw_sprite(archivo_texto,0,pl_00.x-350,pl_00.y-100);
}
if archivo_texto1_hoja = 2 {
draw_sprite(archivo_texto1_hoja2,0,pl_00.x-350,pl_00.y-100);
}
if archivo_texto1_hoja = 3 {
draw_sprite(archivo_texto1_hoja3,0,pl_00.x-350,pl_00.y-100);
}
