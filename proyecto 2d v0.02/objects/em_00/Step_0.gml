depth = 3;
solid = true;

/////////PARA QUE GUARDE AL ZOMBI MUERTO, AIQUE COMPROBAR CODIGO DE VIDA Y SALUD DEL MISMO/////////
//poner que cuando salud = 0... vida = 0 y esa sera la variable global que guardara el archivo ini


/////////////////////////////////////////CONTROL DE VIDA DEL OBJETO//////////////////////////////////////
//Muerte

if pl_00.salud_em_00 <= 0 {
	instance_create_depth(x,y,depth,em_00_muerto)
	instance_destroy(); 
}

//Vivo
if pl_00.salud_em_00 > 0 {

//////////////////////////////////////////////////////////////////////////////////////////////////////////



// daño recibido por bala


//daño por disparo_wep00



if mira_wep00.EnMira_CabezaEm00 = 0 { 
	 	if mira_wep00.EnMira_Em00 = true {
	if distance_to_object(mira_wep00) < 1 {
		if distance_to_object(bal_00) < 1 {
if pl_00.salud_em_00 > 0 {
	
	alarm[0] = 1;
	danoEm00_arma = 1;
	instance_create_depth(x,y,depth,sangre_piso_zombie);
	//alerta al recibir daño al estar parado
alerta = 1;	

///animacion y sonido al recibir daño
if speed > 0 {
sprite_index = zombie1_bal00;
}
if (!audio_is_playing(em00dano)) {
		audio_play_sound(em00dano,10,false);
}
// vida restada por bala wep00
pl_00.salud_em_00 -= 7 
}

// al morir
if pl_00.salud_em_00 < 1 {
pl_00.salud_em_00 -= 0	
pl_00.vida_em00 = 0;
}
if pl_00.vida_em00 = 0 {
if pl_00.salud_em_00 > 0 {
	pl_00.salud_em_00 = 0;
}
	
}


}
}
		}
}




if distance_to_object(bal_pl01) < 1 {
	pl_00.salud_em_00 -= 5;
	alarm[0] = 1
	danoEm00_arma = 1;
	instance_create_depth(x,y,depth,sangre_piso_zombie);
}


////////////////////////////////////////////CONTROL DE ANIMACIONES (SPRITES)/////////////////////////
if animacion_atacar = 0 {
sprite_index = zombie1_abajo_mordiendo;
image_speed = 0.7;
}

if animacion_atacar = 1 {
		image_speed = 0.7;
sprite_index = zombie1_atacando_pl00_pl01;
}
/////////////////////////////////////////////////////////////////////////////////////////////////////////
	
	
	
	
////////////////////////////////////////////CONTROL DE ANIMACION DE AGARRE (MORDIDA)/////////////////////////
//distancia de animacion de ataque
if pl_00.Agarre_zombie = false {
	animacion_atacar = 0;
	depth = 3
	image_alpha = 1
}

		//animacion y sonido al atacar al jugador
if pl_00.Agarre_zombie = true {
if (!audio_is_playing(em00_mordida)) {
	audio_play_sound(em00_mordida,100,false);
}
velocidad_em00 = 0;
	animacion_atacar = 1;
	depth = 1
	image_alpha = 0.5
}

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////





////////////////////////////////////ELEMENTOS DE IA (VER AL JUGADOR)////////////////////////////////
//Rutas de segimiento IA
Ruta_em00_pl00 = path_add(); //Jugador
Ruta_em00_Ladrillo = path_add(); //Ladrillo

distancia = point_distance(x,y,pl_00.x,pl_00.y); //Distancia con el jugador

//Comprobar si no hay obstaculos en la vista para poder ver al jugador
Puede_Ver = !collision_line(x,y,pl_00.x,pl_00.y,pared1_Der_Isq,false,false); //Jugador/Paredes

//Comprobar si puede perseguir
Puede_Perseguir = Puede_Ver and (distancia <= radio_persecucion); //Jugador

//Comprobar si esta siendo dañado para detener velocidad
		if retroceso_dano = 1 {
	velocidad_em00 = 0;
	move_towards_point(pl_00.x,pl_00.y,-40)
}
///////////////////////////////////////////////////////////////////////////////////////////////////////





//////////////////////////////GIRO DE ANGULO EN DIRECCION A SU MOVIMIENTO////////////////////

//Arriba
if (direction >= 75) and (direction <= 105) {
direccion_em00 = 90;	
}

//Abajo
if (direction >= 255) and (direction <= 285) {
direccion_em00 = 270;	
}

//Isquierda
if (direction >= 165) and (direction <= 195) {
direccion_em00 = 180;	
}

//Derecha
if (direction >= 345) and (direction <= 375) {
direccion_em00 = 0;
}

//Abajo_Derecha
if (direction >= 285) and (direction <= 345) {
direccion_em00 = 315;
}

//Abajo_Isquierda
if (direction >= 195) and (direction <= 255) {
direccion_em00 = 225;
}

//Arriba_Derecha
if (direction >= 35) and (direction <= 75) {
direccion_em00 = 45;
}

//Arriba_Isquierda
if (direction >= 105) and (direction <= 165) {
direccion_em00 = 135;
}

////////////////////////////////////////////////////////////////////////////////////////////////////







//////////////////////////////////////////ESTADOS DE ALERTA////////////////////////////////////////
//Jugador entra en su radio aproximado de alerta
	//(ALERTA: perseguir)

if !collision_line(x,y,pl_00.x,pl_00.y,pared1_Der_Isq,false,false) {
            //Esta Cerca, Y si lo puede ver
	alerta = 1;     }

if distance_to_object(pl_00) < radio_persecucion {
	
	
	//(ALERTA: Buscar)
	if Puede_Ver = false {
			//Esta Cerca, Corre, pero no lo puede ver
	if pl_00.corriendo = 1 {
	alerta = 1;            }
	
	}
	

	
	
}
///////////////////////////////////////////////////////////////////////////////////////////////////////////




////////////////////CONTROL DE COLICION AL ROMPER PUERTAS (DESENCADENACION DE FECTOS)///////////////////////
if distance_to_object(prueba_puerta) < 1 {
velocidad_em00 = 0;
}
///////////////////////////////////////////////////////////////////////////////////////////////////////////





////////////////////////////////////////IA DE ACUERDO A SU ALERTA ACTUAL/////////////////////////////////////


//CONTADOR DE PERSECUCION PARA CAMBIAR A REPOSO//////////
if Puede_Ver = true {
				ContadorPersecucionPoderVer = 0;
				}
//////////////////////////////////////////////////////////////////////////////////



//REPOSO/////////////////////////////////////////
if alerta = 0 {
	
		//Si hay un distractor (ladrillo)
		if pl_00.ladrillo_Roto = false {
			path_end();
}
	
	//Si hay un distractor (ladrillo)
		if pl_00.ladrillo_Roto = true {
	direccion_em00 = point_direction(x,y,Ladrillo.x,Ladrillo.y);  // direccion del zombie al haber sido alertado
			mp_potential_path(Ruta_em00_Ladrillo, Ladrillo.x,Ladrillo.y,4,8,false);
path_start(Ruta_em00_Ladrillo,velocidad_em00,path_action_stop,false);
}
	
             }
//////////////////////////////////////////////////////////////////////////////////
			 
			 
			 
//BUSCANDO_PERSIGIENDO/////////////////////////////////////////
if alerta > 0 { 


	//Control de colicion contra pared al estar alerta
	if distance_to_object(pared1_Der_Isq) < 2 {
	move_towards_point(x,y,-40)
	mp_potential_path(Ruta_em00_pl00, pl_00.x,pl_00.y,4,8,false);
path_start(Ruta_em00_pl00,velocidad_em00,path_action_stop,false);
	}
	
//Al jugador
         
	mp_potential_path(Ruta_em00_pl00, pl_00.x,pl_00.y,4,8,false);
path_start(Ruta_em00_pl00,velocidad_em00,path_action_stop,false);
	if (!audio_is_playing(em00_alerta)) {  
		audio_play_sound(em00_alerta,20,false); 
		  }
		
			if Puede_Ver = false {
				if distance_to_object(prueba_puerta) > 0 {
				ContadorPersecucionPoderVer += 1;
				}
	if ContadorPersecucionPoderVer = 150 {
		ContadorPersecucionPoderVer = 0;
	alerta = 0;	
	}
}
			}
                            
							 

/////////////////////////////////////////////////////////////////////////////////////////////////////////		 
			 



 
////////////////////////////////////////CONTROL DE CARACTERISTICAS DE ACUERDO A SU ALERTA///////////////////////////////
	if alerta = 0 { //REPOSO
		
	if retroceso_dano = 0 { //Comprobar si no esta siendo dañado
velocidad_em00 = 1;	 //Velocidad
                          }

	}
	
	
		if alerta > 0 { //BUSCANDO_PERSECUCION
			
velocidad_em00 = 2;	//Velocidad

	}
	

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////




}










	

	
	











	




		


