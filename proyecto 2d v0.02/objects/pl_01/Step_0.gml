depth = 3;


speed = velocidad_pl_01;

if velocidad_pl_01 = 0 {
sprite_index = personaje2_parado;	
}
if velocidad_pl_01 = 2 {
sprite_index = personaje2_caminando;	
}


//Comprobar si no hay obstaculos en la vista para poder ver al jugador

Puede_Ver_pl_01_pl00 = !collision_line(x,y,pl_00.x,pl_00.y,pared1_Der_Isq,false,false); //Jugador1/jugador2
Ruta_pl01_pl00 = path_add(); //Jugador
if pl_00.salud_em_00 > 0 {
	Puede_Ver_pl_01 = !collision_line(x,y,em_00.x,em_00.y,pared1_Der_Isq,false,false); //Jugador/Paredes
	if distance_to_object(pl_00) < 70 {
	velocidad_pl_01 = 0;
	}	
		if distance_to_object(pl_00) > 70 {
	velocidad_pl_01 = 2;
	}
	if distance_to_object(em_00) > 250 {
		
	if distance_to_object(pl_00) > 70 {
	velocidad_pl_01 = 2;
	}
	}
	
	
if distance_to_object(em_00) < 250 {
	if Puede_Ver_pl_01 = true {
	PoderDisparar_pl01 = true;
	}
}

if PoderDisparar_pl01 {
	disparo_pl01 += 1;
direccion_pl_01 = point_direction(x,y,em_00.x,em_00.y);
if disparo_pl01 = 60 {
	audio_play_sound(wep02_shot,10,false);
	disparo_pl01 += 0;	
disparo_pl01 = 0;
		bala_pl01 = instance_create_depth(x,y,depth,bal_pl01);

bala_pl01.direction = direccion_pl_01;

bala_pl01.speed = 18;
}
}

if disparo_pl01 > 0 {
	if disparo_pl01 < 4 {
sprite_index = personaje1_apuntandoYcaminando_wep00;
}
}
if disparo_pl01 > 3 {
sprite_index = personaje1_disparando_wep00;
}
}

	mp_potential_path(Ruta_pl01_pl00, pl_00.x,pl_00.y,4,8,false);
path_start(Ruta_pl01_pl00,velocidad_pl_01,path_action_stop,false);

		  


//////////////////////////////GIRO DE ANGULO EN DIRECCION A SU MOVIMIENTO////////////////////
if Puede_Ver_pl_01_pl00 = false {
	if distance_to_object(em_00) > 100 {
//Arriba
if (direction >= 75) and (direction <= 105) {
direccion_pl_01 = 90;	
}

//Abajo
if (direction >= 255) and (direction <= 285) {
direccion_pl_01 = 270;	
}

//Isquierda
if (direction >= 165) and (direction <= 195) {
direccion_pl_01 = 180;	
}

//Derecha
if (direction >= 345) and (direction <= 375) {
direccion_pl_01 = 0;
}

//Abajo_Derecha
if (direction >= 285) and (direction <= 345) {
direccion_pl_01 = 315;
}

//Abajo_Isquierda
if (direction >= 195) and (direction <= 255) {
direccion_pl_01 = 225;
}

//Arriba_Derecha
if (direction >= 35) and (direction <= 75) {
direccion_pl_01 = 45;
}

//Arriba_Isquierda
if (direction >= 105) and (direction <= 165) {
direccion_pl_01 = 135;
}
}
}
////////////////////////////////////////////////////////////////////////////////////////////////////








	

	
	











	




		


