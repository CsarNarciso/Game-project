//daño por disparo_wep00
if (pl_00.salud_em_003 > 0){
pl_00.salud_em_003 -= 10;
if speed = 0 {
alerta3 = 1;	
}
}
if pl_00.salud_em_003 < 1 {
	pl_00.salud_em_003 -= 0;
}
///animacion y sonido al recibir daño
sprite_index = zombie1_bal00;
if sprite_index = zombie1_bal00 {
if (!audio_is_playing(em00dano)) {
		audio_play_sound(em00dano,10,false);
}
}