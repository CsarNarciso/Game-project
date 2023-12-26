/// @description disparar




///////// crear balas y tomar control total del arma como sonido y municon gastada + direccion de la bala/////////
	
if RECARGANDO = false {
//wep00
			
if Arma = 1 {
	if ammo > 0 {
	audio_play_sound(wep00_shot,10,false);
disparo_wep00 = 0;
		bala00 = instance_create_depth(x,y,depth,bal_00,);
ammo--;

bala00.direction = point_direction(x,y,mira_wep00.x,mira_wep00.y);

bala00.speed = 18;
}
}



//wep02	
if apuntar_caminar = 1 {
if Arma = 3 {
	if ammo02 > 0 {
	audio_play_sound(wep02_shot,10,false);
disparo_wep02 = 0;
		bala02 = instance_create_depth(x,y,depth,bal_02,);
ammo02--;

bala02.direction = point_direction(x,y,mira_wep00.x,mira_wep00.y);

bala02.speed = 8;
}
}
}
}

