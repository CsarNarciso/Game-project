////////caracteristicas del enemigo/////////

// estados de enemigo zombie
enum estado_zombie {
	movimiento_em00 = em00_movimiento,
	persecucion = em00_persecucion,
}


randomize(); /// variables del zombie
direccion_em00 = random(360);  // rotacion maxima al egir al jugador
velocidad_em00 = 1;  // velocidad del zombie
alerta = 0;  //  estado de alerta para segir al jugador al activarse
animacion_atacar = 0; // generar animacion de ataque al jugador
radio_persecucion = 150;  // distancia de vision para segir al jugador
retroceso_dano = 0; // quedarse quieto al recibir daño
danoEm00_arma = 1; // 








