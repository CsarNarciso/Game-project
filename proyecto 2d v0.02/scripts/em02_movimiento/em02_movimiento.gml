function em02_movimiento() {
	//em02
	depth = 0

	if animacion_atacar2 = 0 {
		velocidad_em02 = 1;
	sprite_index = zombie1_abajo_mordiendo;
	image_speed = 0.7;
	if alerta2 > 0 {
	direccion_em02 =  point_direction(x,y,pl_00.x,pl_00.y);
	}

	}


	if animacion_atacar2 = 1 {
			velocidad_em02 = 0;
			image_speed = 0.7;
	sprite_index = zombie1_atacando_pl00_pl01;
	}



}
