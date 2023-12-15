
// movimiento en direccion al jugador con rotacion ///////
	speed = velocidad_em02;
	if animacion_atacar2 = 0 {
	direction = direccion_em02;
	}
	
	script_execute(em02_movimiento)
	


	
	
	
//muerte
if pl_00.salud_em_002 < 1 {
	instance_destroy(em_00_2);
}

// vivo
if pl_00.salud_em_002 > 0 {
	
//distancia de animacion de ataque

if distance_to_object(pl_00) > 10 {
	animacion_atacar2 = 0;
}
if distance_to_object(pl_00) < 10 {
	animacion_atacar2 = 1;
}

}



//rango de vision //distancia para sonidos
if pl_00.salud_em_002 > 0 {
	
if distance_to_object(pl_00) < radio_persecucion2 {
	alerta2 = 2
	if (!audio_is_playing(em00_alerta)) {
		audio_play_sound(em00_alerta,20,false);
	}
	
}
		

//alerta al recibir daño o ver al personaje //sonido
if alerta2 > 0 {
	if (!audio_is_playing(em00_alerta)) {
		audio_play_sound(em00_alerta,20,false);
	}
}

//distancia para animacion de ataque y sonido de distancia
if pl_00.salud_em_002 > 0 {
if distance_to_object(pl_00) < 51 {
	if (!audio_is_playing(em00_agarrar)) {
		audio_play_sound(em00_agarrar,20,false);
	}
}

if distance_to_object(pl_00) < 300 {
	if (!audio_is_playing(em00_distancia)) {
		audio_play_sound(em00_distancia,3,false);
}
}


}

}