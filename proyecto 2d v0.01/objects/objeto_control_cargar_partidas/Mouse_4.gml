/// @description cargar partida
 


// cargar archivo.ini y variables completas (actualizadas)


ini_open("partida.ini");
//posicion
global.PosX = ini_read_real("dato1", "PosX", global.PosX);
global.PosY = ini_read_real("dato1", "PosY", global.PosY);
//ammo00
global.ammo = ini_read_real("dato2", "ammo", global.ammo);
global.extra_ammo = ini_read_real("dato2", "extra_ammo", global.extra_ammo);
//ammo00-recojer
global.municion_de_pistola_recojer = ini_read_real("dato3", "municion_de_pistola_recojer", global.municion_de_pistola_recojer);
global.municion_de_pistola_recojer2 = ini_read_real("dato3", "municion_de_pistola_recojer2", global.municion_de_pistola_recojer2);
global.municion_de_pistola_recojer3 = ini_read_real("dato3", "municion_de_pistola_recojer3", global.municion_de_pistola_recojer3);
global.municion_de_pistola_recojer4 = ini_read_real("dato3", "municion_de_pistola_recojer4", global.municion_de_pistola_recojer4);
//wep01-recojer
global.Escopeta = ini_read_real("dato4", "Escopeta", global.Escopeta);
//ammo01
global.ammo01 = ini_read_real("dato4", "ammo01", global.ammo01);
global.extra_ammo01 = ini_read_real("dato4", "extra_ammo01", global.extra_ammo01);
//ammo01-recojer
global.municion_de_escopeta_recojer = ini_read_real("dato4", "municion_de_escopeta_recojer", global.municion_de_escopeta_recojer);
global.municion_de_escopeta_recojer2 = ini_read_real("dato4", "municion_de_escopeta_recojer2", global.municion_de_escopeta_recojer2);
//wep02-recojer
global.fusilAsalto = ini_read_real("dato4", "fusilAsalto", global.fusilAsalto);
//ammo02
global.ammo02 = ini_read_real("dato4", "ammo02", global.ammo02);
global.extra_ammo02 = ini_read_real("dato4", "extra_ammo02", global.extra_ammo02);
//ammo02-recojer
global.municion_de_fusilAsalto_recojer = ini_read_real("dato4", "municion_de_fusilAsalto_recojer", global.municion_de_fusilAsalto_recojer);
//salud-pl_00
global.salud = ini_read_real("dato5", "salud", global.salud);
global.salud_extra = ini_read_real("dato5", "salud_extra", global.salud_extra);
//vida_pl_01
global.vida_pl_01 = ini_read_real("dato5", "vida_pl_01", global.vida_pl_01);
//puerta sala de espera
global.LLave_sala_espera = ini_read_real("dato6", "LLave_sala_espera", global.LLave_sala_espera);
global.puerta_saladeespera_interactuar = ini_read_real("dato6", "puerta_saladeespera_interactuar", global.puerta_saladeespera_interactuar);
//salud_em00
global.salud_em_00 = ini_read_real("dato7", "salud_em00", global.salud_em_00);
global.salud_em_002 = ini_read_real("dato7", "salud_em002", global.salud_em_002);
global.salud_em_003 = ini_read_real("dato7", "salud_em003", global.salud_em_003);
global.salud_em_004 = ini_read_real("dato7", "salud_em004", global.salud_em_004);
global.salud_em_005 = ini_read_real("dato7", "salud_em005", global.salud_em_005);
global.salud_em_006 = ini_read_real("dato7", "salud_em006", global.salud_em_006);
global.salud_em_007 = ini_read_real("dato7", "salud_em007", global.salud_em_007);
global.salud_em_008 = ini_read_real("dato7", "salud_em008", global.salud_em_008);
global.salud_em_009 = ini_read_real("dato7", "salud_em009", global.salud_em_009);
global.salud_em_0010 = ini_read_real("dato7", "salud_em0010", global.salud_em_0010);
global.salud_em_0011 = ini_read_real("dato7", "salud_em0011", global.salud_em_0011);
global.salud_em_0012 = ini_read_real("dato7", "salud_em0012", global.salud_em_0012);
global.salud_em_0013 = ini_read_real("dato7", "salud_em0013", global.salud_em_0013);
global.salud_em_0014 = ini_read_real("dato7", "salud_em0014", global.salud_em_0014);
global.salud_em_0015 = ini_read_real("dato7", "salud_em0015", global.salud_em_0015);
global.salud_em_0016 = ini_read_real("dato7", "salud_em0016", global.salud_em_0016);
global.salud_em_0017 = ini_read_real("dato7", "salud_em0017", global.salud_em_0017);
global.salud_em_0018 = ini_read_real("dato7", "salud_em0018", global.salud_em_0018);
global.salud_em_0019 = ini_read_real("dato7", "salud_em0019", global.salud_em_0019);
global.salud_em_0020 = ini_read_real("dato7", "salud_em0020", global.salud_em_0020);
//botiquin_recojer
global.botiquines_recojer = ini_read_real("dato8", "botiquines_recojer", global.botiquines_recojer);
global.botiquines_recojer2 = ini_read_real("dato8", "botiquines_recojer2", global.botiquines_recojer2);
global.botiquines_recojer3 = ini_read_real("dato8", "botiquines_recojer3", global.botiquines_recojer3);
global.botiquines_recojer4 = ini_read_real("dato8", "botiquines_recojer4", global.botiquines_recojer4);
//contraseña 1
global.contrasena1 = ini_read_real("dato9", "contraseña1", global.contrasena1);
ini_close();
room_goto(st1);

