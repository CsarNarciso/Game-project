function em00_persecucion() {
	// EM00 -  MOTOR DE CONTROL DE (IA) "PERSECUCION"




	//  CONTROL DE ESTADOS SEGIDOS Y CORRECTOS AL NO ESTAR ATACANDO

	if animacion_atacar = 0 {  // comprobar si no esta atacando al jugador para desencadenar efectos
	sprite_index = zombie1_abajo_mordiendo;  // sprite actual y consecutivo para el zombie
	image_speed = 0.7; // velocidad de imajen


	// COTROL DE ESTADO PARA QUEDARSE QUIETO AL RECIBIR DAÑO

	if retroceso_dano = 0 {  // comprobar si no esta siendo tocado por bala para retroseder
	velocidad_em00 = 0.8;  // velocidad actual al no estar retrosediendo
	}

	if retroceso_dano = 1 {  // comprobar si esta siendo tocado por bala para retrosede
		move_towards_point(pl_00.x,pl_00.y,-20);
		velocidad_em00 = 0;
	}


	// ESTADO DE CONTROL PARA ALERTAR AL ZOMBIE

	if alerta > 0 {  // comprobar si la alerta del zombie esta activa para desencadenar efectos
	
	mp_potential_step_object(pl_00.x,pl_00.y,1,pared1_Der_Isq);

	//direccion_em00 = point_direction(x,y,pl_00.x,pl_00.y);  // direccion del zombie al haber sido alertado

	//motion_set(direccion_em00,velocidad_em00) //  direccion con rotacion del zombie al haber sido alertado


	if distance_to_object(pl_00) > 181 {  // comprobar la distancia con el jugador para empe<ar a dejar de segir al jugador
		DEJARdeSegir_em00 += 1;  // empezar a dejar de segir al jugador
	}
	if distance_to_object(pl_00) < 181 {  // comprobacion de distancia con el jugador para empezar a segir
		DEJARdeSegir_em00 = 1;  //  estado actual de segimiento continuo
	}

	// CONTROL DE ESTADO DE NIVEL SEGIMIENTO (IA) DE ZOMBIE (SEGIMIENTO POR DISTANCIA)

	if DEJARdeSegir_em00 = 250 {
	DEJARdeSegir_em00 += 0;
	DEJARdeSegir_em00 = 0;
	}
	if DEJARdeSegir_em00 = 0 { // comprobar si el nivel de segimiento a disminuido para dejar de segir al jugador
	alerta = 0;	// volver a estado "pasivo" al dejar de egir al jugador
	}

	}
	}

	// CONTROL DE ESTADO DE ATAQUE

	if animacion_atacar = 1 {  // comprobar si esta atacando al jugador para desencadenar efectos
		velocidad_em00 = 0;	   // velocidad actual al estar atacando
			image_speed = 0.7; // velocidad de imajen actual al estar atacando
	sprite_index = zombie1_atacando_pl00_pl01; // sprite actual al estar atacando
	}


	/*
	if pl_00.Agarre_zombie_contador > 35 {
	move_towards_point(pl_00.x,pl_00.y,-50)	
	velocidad_em00 = 0;
	}


/* end em00_persecucion */
}
