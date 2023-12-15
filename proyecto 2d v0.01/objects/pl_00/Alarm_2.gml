/// @description disparar


///////// crear balas y tomar control total del arma como sonido y municon gastada + direccion de la bala/////////
	
if apuntar_caminar = 1 {
//wep00
if v = 0 {
			
if Arma = 1 {
	if ammo > 0 {
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
	audio_play_sound(wep00_shot,10,false);
disparo_wep00 = 0;
		bala00 = instance_create_depth(x,y,depth,bal_00,);
ammo--;

             if movimiento_AWDS_disparoFuego_wep00 = 0 {
bala00.direction = bal_00.hspeed -0
		}
			if movimiento_AWDS_disparoFuego_wep00 = 90 {
bala00.direction = bal_00.hspeed -270
		}
			if movimiento_AWDS_disparoFuego_wep00 = 180 {
bala00.direction = bal_00.hspeed -180
		}
			if movimiento_AWDS_disparoFuego_wep00 = 270 {
bala00.direction = bal_00.hspeed -90
		}
bala00.speed = 15;
}
}

}



//wep01
if v = 0 {
if Arma = 2 {
if ammo01 > 0 {
audio_play_sound(wep01_shot,10,false);
		bala01 = instance_create_depth(x,y,depth,bal_01,);
ammo01--;
             if movimiento_AWDS = 0 {
bala01.direction = bal_01.hspeed -0
		}
			if movimiento_AWDS = 90 {
bala01.direction = bal_01.hspeed -270
		}
			if movimiento_AWDS = 180 {
bala01.direction = bal_01.hspeed -180
		}
			if movimiento_AWDS = 270 {
bala01.direction = bal_01.hspeed -90
		}
bala01.speed = 15;
}
}
}



//wep02	
if v = 0 {
if Arma = 3 {
	if ammo02 > 0 {
	audio_play_sound(wep02_shot,10,false);
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