if pl_00.salud > 0 {

contadorLatido += 1;

if pl_00.salud >= 5 {
if contadorLatido >= 30 {
contadorLatido = 0;	
if (!audio_is_playing(LatidoUno)) {
		audio_play_sound(LatidoUno,10,false);
}
}
}
if pl_00.salud <= 4 {
if contadorLatido >= 20 {
contadorLatido = 0;	
if (!audio_is_playing(LatidoUno)) {
		audio_play_sound(LatidoUno,10,false);
}
}
}
if pl_00.salud = 2 {
if contadorLatido >= 15 {
contadorLatido = 0;	
if (!audio_is_playing(LatidoUno)) {
		audio_play_sound(LatidoUno,10,false);
}
}
}
if pl_00.salud = 1 {
if contadorLatido >= 10 {
contadorLatido = 0;	
if (!audio_is_playing(LatidoUno)) {
		audio_play_sound(LatidoUno,10,false);
}
}
}


}
