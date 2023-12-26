function em00_movimiento() {
	// em00



	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

	if pl_00.ladrillo_Roto = true {
	direccion_em00 = point_direction(x,y,Ladrillo.x,Ladrillo.y);  // direccion del zombie al haber sido alertado
	motion_set(direccion_em00,velocidad_em00) //  direccion con rotacion del zombie al haber sido alertado
	}
	
	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////	

	if pl_00.ladrillo_Roto = false {

	if distance_to_object(pared1_Der_Isq) < 30 {
	direccion_em00 = choose(0,90,180,270) 
	motion_set(direccion_em00,velocidad_em00)
	}  
	else {
	if animacion_atacar = 0 {
		velocidad_em00 = 0.5;
	sprite_index = zombie1_abajo_mordiendo;
	image_speed = 0.7;

	}


	if animacion_atacar = 1 {
			velocidad_em00 = 0;
			image_speed = 0.7;
	sprite_index = zombie1_atacando_pl00_pl01;
	}

	if retroceso_dano = 0 {
	velocidad_em00 = 1;	
	}
	if retroceso_dano = 1 {
		velocidad_em00 = 0;
		move_towards_point(pl_00.x,pl_00.y,-20)
	}

	}

	}

	/*
	if pl_00.Agarre_zombie_contador > 35 {
	move_towards_point(pl_00.x,pl_00.y,-50)	
	velocidad_em00 = 0;
	}

/* end em00_movimiento */
}
