if objeto_control_BotonesDeSlotsPartidas.NUMERO_SLOT_PARTIDA = 2 {

// cargar archivo.ini y variables completas (actualizadas)


ini_open("partida2.ini");
//posicion
global.PosX = ini_read_real("dato1s2", "PosXs2", global.PosX);
global.PosY = ini_read_real("dato1s2", "PosYs2", global.PosY);
//ammo00
global.ammo = ini_read_real("dato2", "ammo", global.ammo);
global.extra_ammo = ini_read_real("dato2", "extra_ammo", global.extra_ammo);
//ammo00-recojer
global.municion_de_pistola_recojer = ini_read_real("dato3s2", "municion_de_pistola_recojers2" ,global.municion_de_pistola_recojer);
global.municion_de_pistola_recojer2 = ini_read_real("dato3s2", "municion_de_pistola_recojer2s2", global.municion_de_pistola_recojer2);
global.municion_de_pistola_recojer3 = ini_read_real("dato3s2", "municion_de_pistola_recojer3s2", global.municion_de_pistola_recojer3);
global.municion_de_pistola_recojer4 = ini_read_real("dato3s2", "municion_de_pistola_recojer4s2", global.municion_de_pistola_recojer4);
//wep01-recojer
global.Escopeta = ini_read_real("dato4s2", "Escopetas2", global.Escopeta);
//ammo01
global.ammo01 = ini_read_real("dato4s2", "ammo01s2", global.ammo01);
global.extra_ammo01 = ini_read_real("dato4s2", "extra_ammo01s2", global.extra_ammo01);
//ammo01-recojer
global.municion_de_escopeta_recojer = ini_read_real("dato4s2", "municion_de_escopeta_recojers2", global.municion_de_escopeta_recojer);
global.municion_de_escopeta_recojer2 = ini_read_real("dato4s2", "municion_de_escopeta_recojer2s2", global.municion_de_escopeta_recojer2);
//wep02-recojer
global.fusilAsalto = ini_read_real("dato4s2", "fusilAsaltos2", global.fusilAsalto);
//ammo02
global.ammo02 = ini_read_real("dato4s2", "ammo02s2", global.ammo02);
global.extra_ammo02 = ini_read_real("dato4s2", "extra_ammo02s2", global.extra_ammo02);
//ammo02-recojer
global.municion_de_fusilAsalto_recojer = ini_read_real("dato4s2", "municion_de_fusilAsalto_recojers2", global.municion_de_fusilAsalto_recojer);
//salud-pl_00
global.salud = ini_read_real("dato5s2", "saluds2", global.salud);
global.salud_extra = ini_read_real("dato5s2", "salud_extras2", global.salud_extra);
//vida_pl_01
global.vida_pl_01 = ini_read_real("dato5s2", "vida_pl_01s2", global.vida_pl_01);
//puerta sala de espera
global.LLave_sala_espera = ini_read_real("dato6s2", "LLave_sala_esperas2", global.LLave_sala_espera);
global.puerta_saladeespera_interactuar = ini_read_real("dato6s2", "puerta_saladeespera_interactuars2", global.puerta_saladeespera_interactuar);
//salud_em00
global.vida_em00 = ini_read_real("dato7s2", "salud_em00s2", global.vida_em00);
global.salud_em_002 = ini_read_real("dato7s2", "salud_em002s2", global.salud_em_002);
global.salud_em_003 = ini_read_real("dato7s2", "salud_em003s2", global.salud_em_003);
global.salud_em_004 = ini_read_real("dato7s2", "salud_em004s2", global.salud_em_004);
global.salud_em_005 = ini_read_real("dato7s2", "salud_em005s2", global.salud_em_005);
global.salud_em_006 = ini_read_real("dato7s2", "salud_em006s2", global.salud_em_006);
global.salud_em_007 = ini_read_real("dato7s2", "salud_em007s2", global.salud_em_007);
global.salud_em_008 = ini_read_real("dato7s2", "salud_em008s2", global.salud_em_008);
global.salud_em_009 = ini_read_real("dato7s2", "salud_em009s2", global.salud_em_009);
global.salud_em_0010 = ini_read_real("dato7s2", "salud_em0010s2", global.salud_em_0010);
global.salud_em_0011 = ini_read_real("dato7s2", "salud_em0011s2", global.salud_em_0011);
global.salud_em_0012 = ini_read_real("dato7s2", "salud_em0012s2", global.salud_em_0012);
global.salud_em_0013 = ini_read_real("dato7s2", "salud_em0013s2", global.salud_em_0013);
global.salud_em_0014 = ini_read_real("dato7s2", "salud_em0014s2", global.salud_em_0014);
global.salud_em_0015 = ini_read_real("dato7s2", "salud_em0015s2", global.salud_em_0015);
global.salud_em_0016 = ini_read_real("dato7s2", "salud_em0016s2", global.salud_em_0016);
global.salud_em_0017 = ini_read_real("dato7s2", "salud_em0017s2", global.salud_em_0017);
global.salud_em_0018 = ini_read_real("dato7s2", "salud_em0018s2", global.salud_em_0018);
global.salud_em_0019 = ini_read_real("dato7s2", "salud_em0019s2", global.salud_em_0019);
global.salud_em_0020 = ini_read_real("dato7s2", "salud_em0020s2", global.salud_em_0020);
//botiquin_recojer
global.botiquines_recojer = ini_read_real("dato8s2", "botiquines_recojers2", global.botiquines_recojer);
global.botiquines_recojer2 = ini_read_real("dato8s2", "botiquines_recojer2s2", global.botiquines_recojer2);
global.botiquines_recojer3 = ini_read_real("dato8s2", "botiquines_recojer3s2", global.botiquines_recojer3);
global.botiquines_recojer4 = ini_read_real("dato8s2", "botiquines_recojer4s2", global.botiquines_recojer4);
//contraseña 1
global.contrasena1 = ini_read_real("dato9s2", "contraseña1s2", global.contrasena1);
ini_close();
room_goto(st1);
}
