	if fusilAsalto = 1 { 
		
		if movimiento_AWDS_disparoFuego_wep02 = 0 {
			
	if mouse_check_button(mb_left) {
		sprite_index = personaje1_disparando_wep02der;
		}
		else {
			sprite_index = personaje1_apuntando_wep02Der;
		}
		}
		
			if movimiento_AWDS_disparoFuego_wep02 = 90 {
			
	if mouse_check_button(mb_left) {
		sprite_index = personaje1_disparando_wep02Ar;
		}
		else {
			sprite_index = personaje1_apuntando_wep02Ar;
		}
		}
		
			if movimiento_AWDS_disparoFuego_wep02 = 180 {
			
	if mouse_check_button(mb_left) {
		sprite_index = personaje1_disparando_wep02isq;
		}
		else {
			sprite_index = personaje1_apuntando_wep02Isq;
		}
		}
		
			if movimiento_AWDS_disparoFuego_wep02 = 270 {
			
	if mouse_check_button(mb_left) {
		sprite_index = personaje1_disparando_wep02Ab;
		}
		else {
			sprite_index = personaje1_apuntando_wep02Ab;
		}
		}
		
Arma = 3;
audio_play_sound(cambiar_arma,10,false);
		
	}