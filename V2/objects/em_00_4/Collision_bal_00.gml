//daño por disparo_wep00
if (pl_00.salud_em_004 > 0){
pl_00.salud_em_004 -= 10;
if speed = 0 {
alerta4 = 1;	
}
}
if pl_00.salud_em_004 < 1 {
	pl_00.salud_em_004 -= 0;
}
///animacion y sonido al recibir daño
sprite_index = zombie1_bal00;
if sprite_index = zombie1_bal00 {
if (!audio_is_playing(em00dano)) {
		audio_play_sound(em00dano,10,false);
}
}