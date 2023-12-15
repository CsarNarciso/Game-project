
if LLave_sala_espera > 0 {
	x = teletransportar_2.x+100;
y = teletransportar_2.y;
		audio_play_sound(Abrir_puertaSalaDeEspera,10,false);
	audio_play_sound(bgm00,10,true);
LLave_sala_espera = 2;
}
if LLave_sala_espera = 0 {
	if (!audio_is_playing(puerta_salaDeEspera_bloqueada)) {
	audio_play_sound(puerta_salaDeEspera_bloqueada,10,false);
}
}