	if movimiento_AWDS_disparoFuego_wep00 = 0 {
		sprite_index = personaje1_apuntando_wep00Der;
		}
			if movimiento_AWDS_disparoFuego_wep00 = 90 {
		sprite_index = personaje1_apuntando_wep00Ar;
		}
			if movimiento_AWDS_disparoFuego_wep00 = 180 {
		sprite_index = personaje1_apuntando_wep00Isq;
		}
			if movimiento_AWDS_disparoFuego_wep00 = 270 {
		sprite_index = personaje1_apuntando_wep00Aba;
		}
Arma = 1;
audio_play_sound(cambiar_arma,10,false);
