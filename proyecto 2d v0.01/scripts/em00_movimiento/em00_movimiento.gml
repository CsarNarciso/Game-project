// em00

if animacion_atacar = 0 {
	velocidad_em00 = 1;
sprite_index = zombie_00;
image_speed = 0.7;
if alerta > 0 {
direccion_em00 =  point_direction(x,y,pl_00.x,pl_00.y);
}

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
}
