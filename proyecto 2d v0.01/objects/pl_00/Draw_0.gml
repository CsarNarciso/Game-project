/// @description vida,municion,linterna e interactuar

/////////linterna//////////

//ARRIVA

if linterna_Ar = 1 {
draw_sprite(linterna,0,pl_00.x,pl_00.y);
draw_self();
}
//ABAJO
if Linterna_Ab = 1 {
draw_sprite(linterna_abajo,0,pl_00.x,pl_00.y);
draw_self();
}
//DERECHA
if linterna_D = 1 {
draw_sprite(linterna_derecha,0,pl_00.x,pl_00.y);
draw_self();
}
//ISQUIERDA
if linterna_I = 1 {
draw_sprite(linterna_isquierda,0,pl_00.x,pl_00.y);
draw_self();
}

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


//ARRIVA
if linterna_Ar = 1 {
draw_sprite(linterna,0,pl_00.x,pl_00.y);
draw_self();
}
//ABAJO
if Linterna_Ab = 1 {
draw_sprite(linterna_abajo,0,pl_00.x,pl_00.y);
draw_self();
}
//DERECHA
if linterna_D = 1 {
draw_sprite(linterna_derecha,0,pl_00.x,pl_00.y);
draw_self();
}
//ISQUIERDA
if linterna_I = 1 {
draw_sprite(linterna_isquierda,0,pl_00.x,pl_00.y);
draw_self();
}

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



