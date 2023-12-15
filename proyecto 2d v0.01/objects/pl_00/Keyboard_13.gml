//// cambio de animacion al disparar manteniedo pulsado el raton //////////
v = 0;

if apuntar_caminar = 1 {
if v = 0 {
if vida = 1 {
// WEP02
// disparo segido de wep02
	if NoDISPARAR = false {
if fusilAsalto = 1 {
if Arma = 3 {
	
	if ammo02 = 0 {
		
		if movimiento_AWDS_disparoFuego_wep02 = 0 {
		sprite_index = personaje1_apuntando_wep02Der;
		}
			if movimiento_AWDS_disparoFuego_wep02 = 90 {
		sprite_index = personaje1_apuntando_wep02Ar;
		}
			if movimiento_AWDS_disparoFuego_wep02 = 180 {
		sprite_index = personaje1_apuntando_wep02Isq;
		}
			if movimiento_AWDS_disparoFuego_wep02 = 270 {
		sprite_index = personaje1_apuntando_wep02Ab;
		}
	}
		if ammo02 > 0 {
		if movimiento_AWDS_disparoFuego_wep02 = 0 {
		sprite_index = personaje1_disparando_wep02der;
		}
			if movimiento_AWDS_disparoFuego_wep02 = 90 {
		sprite_index = personaje1_disparando_wep02Ar;
		}
			if movimiento_AWDS_disparoFuego_wep02 = 180 {
		sprite_index = personaje1_disparando_wep02isq;
		}
			if movimiento_AWDS_disparoFuego_wep02 = 270 {
		sprite_index = personaje1_disparando_wep02Ab;
		}
	}
	}
}
if fusilAsalto = 1 {
if Arma = 3 {
	if ammo02 > 0 {
		disparo_wep02 += 1;
}
if disparo_wep02 = 5 {
	audio_play_sound(wep02_shot,10,false);
	disparo_wep02 += 0;	
disparo_wep02 = 0;
		bala02 = instance_create_depth(x,y,depth,bal_02,);
ammo02--;
             if movimiento_AWDS_disparoFuego_wep02 = 0 {
bala02.direction = bal_02.hspeed -0
		}
			if movimiento_AWDS_disparoFuego_wep02 = 90 {
bala02.direction = bal_02.hspeed -270
		}
			if movimiento_AWDS_disparoFuego_wep02 = 180 {
bala02.direction = bal_02.hspeed -180
		}
			if movimiento_AWDS_disparoFuego_wep02 = 270 {
bala02.direction = bal_02.hspeed -90
		}
bala02.speed = 15;
}
}
}


}
}
}

}