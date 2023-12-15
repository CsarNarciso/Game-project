//recojer municion
if (!audio_is_playing(cojer_municion)) {
audio_play_sound(cojer_municion,10,false);
}
extra_ammo += 15;
instance_destroy(other);
/*municion_de_pistola_recojer += 1;
if municion_de_pistola_recojer = 5 {
	extra_ammo += 15;
}
if municion_de_pistola_recojer > 10 {
	extra_ammo += 0;
}*/