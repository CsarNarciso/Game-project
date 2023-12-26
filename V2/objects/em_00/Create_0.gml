////////caracteristicas del enemigo/////////

instance_create_layer(em_00.x,em_00.y,layer,cabeza_em00);
direccion_em00 = random(360);  // rotacion maxima al segir al jugador
velocidad_em00 = 1;  // velocidad del zombie
alerta = 0;  //  estado de alerta para segir al jugador al activarse
animacion_atacar = 0; // generar animacion de ataque al jugador
radio_persecucion = 400;  // distancia de vision para segir al jugador
retroceso_dano = 0; // quedarse quieto al recibir daño
danoEm00_arma = 1; //  comprobar el daño del tipo de arma para desencadenar posibles efectos en en zombie
DEJARdeSegir_em00 = 0;  // dejar de segir al personaje jugador por un instante determinado
ContadorPersecucionPoderVer = 0;

///  ESTADO DE ZOMVIE EN MIRA DEL JUGADOR

EnMira_em00 = 0;   // detectar si esta en cima de la mira para poder hacer daño al dispararle









