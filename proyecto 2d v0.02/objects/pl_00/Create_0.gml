/////VARIABLES DE ESTADOS////

Quieta_Agachada = false;
Quieta_Parada = false;
Apuntando_Agachada = false;


Estado = 1;
EstadoTex = "Quieta/Parada";
//Interactuar
Interactuar = false;

//Pausa
Pausa = false;

//Inventario
inventario = false;

//MenuRecursos
MenuRecursos = false;
Curandose = false;
Comiendo = false;
BebiendoAgua = false;
DeteniendoSangrado = false;

//Agacharser
Contador_agacharse = 0;
Tiempo_agacharse = 0;
Agachada = false

//Caminando
Caminando = false;

//Caminando sigilo
Caminando_sigilo = false;

//Apuntando
Apuntando = false;

//Recargando
Recargando = false;

//Retrocediendo
Retrocediendo = false;

//Retrocediendo sigilo
Retrocediendo_sigilo = false;

//Corriendo
corriendo = false;

//










Dir_Retrocediendo = 15;
Poder_Retroceder = 0;
salud_em_00 = choose(10,20,30,40,50,60,70);
vida_em00 = 1;
Apuntando = false;
rotacion_dir = 270;
image_angle = rotacion_dir;


DEJARdeSegir_ladrillo = 1;
ladrillo_Roto = false;
ResorteEstirado = 5;
disparo_resortera = 0;

SinMoverse = true;
Contador_Girot180 = 0;
Tiempo_Giro180 = 0;
GIRO180 = false;

//profundidad
Tiempo_Agarrando = 0;
Agarre_zombie_contador = 0;
Agarre_zombie = false;
CorrederaEscopeta = false;
PODER_dispararWep01 = false;	
tiempo_regresoDisparo_wep01 = 25;
Conteo_ani_wep00 = 0;
Conteo_ani_wep01 = 0;
En_ataque_witWep00 = 0;
Ecena = false;	
duracion_ecena = 1;
depth = 2
cuchillo_recojer = 0;
regreso_wit_wep00 = 0;
Atacando_armaBlanca = false;	

///////////variables//////////
 view_xview = x - camera_get_view_width(view_camera[0]);
  view_yview = y - camera_get_view_height(view_camera[0]);
  camera_set_view_pos (view_camera[0], view_xview / 2, view_yview / 2);

 archivo_texto1_interactuar = 0;
 archivo_texto1_hoja = 0;
 //linterna
// linterna_mira = 0;
 linterna_D = 0;
 linterna_I = 0;
 linterna_Ar = 0;
 Linterna_Ab = 0;
 
 ////////apuntando con arma//////////
 //	WEP00
 apuntando_wep00Ab = 0;
 apuntando_wep00Ar = 0;
 apuntando_wep00Der = 0;
 apuntando_wep00Isq = 0;
  //	WEP01
 apuntando_wep01Ab = 0;
 apuntando_wep01Ar = 0;
 apuntando_wep01Der = 0;
 apuntando_wep01Isq = 0;
 
 
////////caracteristicas del enemigo/////////
//EM00

//EM00_2
salud_em_002 = global.salud_em_002;
//EM00_3
salud_em_003 = global.salud_em_003;
//EM00_4
salud_em_004 = global.salud_em_004;
//EM00_5
salud_em_005 = global.salud_em_005;
//EM00_6
salud_em_006 = global.salud_em_006;
//EM00_7
salud_em_007 = global.salud_em_007;
//EM00_8
salud_em_008 = global.salud_em_008;
//EM00_9
salud_em_009 = global.salud_em_009;
//EM00_10
salud_em_0010 = global.salud_em_0010;
//EM00_11
salud_em_0011 = global.salud_em_0011;
//EM00_12
salud_em_0012 = global.salud_em_0012;
//EM00_13
salud_em_0013 = global.salud_em_0013;
//EM00_14
salud_em_0014 = global.salud_em_0014;
//EM00_15
salud_em_0015 = global.salud_em_0015;
//EM00_16
salud_em_0016 = global.salud_em_0016;
//EM00_17
salud_em_0017 = global.salud_em_0017;
//EM00_18
salud_em_0018 = global.salud_em_0018;
//EM00_19
salud_em_0019 = global.salud_em_0019;
//EM00_20
salud_em_0020 = global.salud_em_0020;
//////////cargar y guardar partidas//////


//POSICION,DIRECCION,MOVIMIENTO,VELOCIDAD
x = global.PosX
y = global.PosY
movimiento_AWDS = 0;
v = 2;
v_movimiento = 0.2
rotacion_dir = 270;
correr = 0;
corriendo = 0;
vv = vspeed;
vh = hspeed;

// ESTADO DE AGARRE AL SER ATACADO POR ZOMBIE 

agarre_zombie_em00 = 100; // control de agarre de zombie con el jugador
PODER_agarrar_em00 = false; // comprobar si se puede agarrar o soltar de un zombie


/////////variables de dialogos///////
//CASIE WIHOUT
//dialogo1
textoCASIE[0] = " ";
textoCASIE[1] = "tu: estas cosas son peligrosas,deves ir a un lugar seguro"
textoCASIE[2] = "casie: esta bien te vere en la sala de espera"
textoCASIE[3] = "ok!";
numero_textoCASIE = 0;
CASIE_interactuar = 0;
vida_pl_01 = global.vida_pl_01;

//DR_HOUSE
textoDR_HOUSE[0] = " ";
textoDR_HOUSE[1] = "me han mordido esas cosas";
textoDR_HOUSE[2] = "largate";
textoDR_HOUSE[3] = "!!dejame solo!!";
textoDR_HOUSE[4] = "vete!!";
numero_textoDR_HOUSE = 0;
DR_HOUSE_interactuar = 0;

/////////variables de texto al interactuar/////////
//PUERTAS

//sala de espera
texto[0] = " ";
texto[1] = "esta cerrada con llave"
texto[2] = "hay un letrero en la puerta";
texto[3] = " -> sala de espera <- ";
numero_texto = 0;
LLave_sala_espera = global.LLave_sala_espera;
puerta_saladeespera_interactuar = global.puerta_saladeespera_interactuar;

///////////// variables de funcion al interactuar con objetos /////////

interactuar_recojer = 0; // funcion de interactuar-recojer objetos


///////variables de armas y municion///////
// WEP01 recojer
Escopeta = global.Escopeta; //wep01 sin obtener

// CAMBIO DE ARMA 
RECARGANDO = false;
Arma = 0 //sin arma
No_RECARGAR = false;
NoDISPARAR = false;	
Abrir_INVENTARIO = false;
AbrCer_INVENTARIO = 0;
apuntar_caminar = 0;

// WEP00 obtenida y disparo
pistola = 1; // wep00 obtenida
disparo_wep00 = 0;  // disparo
disparando_wep00_fuego = false; // disparo con animacion
movimiento_AWDS_disparoFuego_wep00 = false; // animacion con direccion

// WEP01

disparo_wep01 = 0;  // disparo
disparando_wep01_fuego = 0; // disparo con animacion

//WEP02  disparo_recojer
fusilAsalto = global.fusilAsalto; // wep02 sin obtener
disparo_wep02 = 0;  // disparo
disparando_wep02_fuego = false; // disparo con animacion
movimiento_AWDS_disparoFuego_wep02 = false; // animacion con direccion

//municion wep00
ammo = global.ammo;  //municion
ammo_max = 12; // capacidad de cargador
extra_ammo = global.extra_ammo; //municion extra
municion_de_pistola_recojer = global.municion_de_pistola_recojer; //recojer municion
municion_de_pistola_recojer2 = global.municion_de_pistola_recojer2; //recojer municion
municion_de_pistola_recojer3 = global.municion_de_pistola_recojer3; //recojer municion
municion_de_pistola_recojer4 = global.municion_de_pistola_recojer4; //recojer municion

//municion wep01
ammo01 = global.ammo01;  //municion
ammo01_max = 6; // capacidad de cargador
extra_ammo01 = global.extra_ammo01; //municion extra
municion_de_escopeta_recojer = global.municion_de_escopeta_recojer; //recojer municion
municion_de_escopeta_recojer2 = global.municion_de_escopeta_recojer2; //recojer municion
//municion wep02
ammo02 = global.ammo02;  //municion
ammo02_max = 100; // capacidad de cargador
extra_ammo02 = global.extra_ammo02; //municion extra
municion_de_fusilAsalto_recojer = global.municion_de_fusilAsalto_recojer; //recojer municion

///////salud-Estado del personaje/////
//pl_00
//SALUD Y VIDA
poder_danar_pl00 = 1; // tiempo de daño y recuperacion
salud = global.salud; //salud
salud_maxima = 6; //capacidad maxima de salud 
salud_extra = global.salud_extra; //curacion de salud extra
vida = 1  // vida/muerte
efecto_mordida = 0 // dibujar efecto de sangre al ser dañado
//BOTIQUINES
botiquines_recojer = global.botiquines_recojer;
botiquines_recojer2 = global.botiquines_recojer2;
botiquines_recojer3 = global.botiquines_recojer3;
botiquines_recojer4 = global.botiquines_recojer4;
//////contraseñas////////
//CONTRASEÑA 1
contrasena1 = global.contrasena1;