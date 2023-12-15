if boton_guardar.Zona_Guardado = true {
if objeto_control_Slots_GuardarPartida.NUMERO_SLOT_GUARDAR_PARTIDA = 2 {
	
ini_open("partida2.ini");
//posicion pl00
ini_write_real("dato1s2", "PosXs2" , pl_00.x); 
ini_write_real("dato1s2", "PosYs2" , pl_00.y); 
//ammo00
ini_write_real("dato2s2", "ammos2" , pl_00.ammo); 
ini_write_real("dato2s2", "extra_ammos2" , pl_00.extra_ammo);
//ammo00-recojer
ini_write_real("dato3s2", "municion_de_pistola_recojers2" , pl_00.municion_de_pistola_recojer); 
ini_write_real("dato3s2", "municion_de_pistola_recojer2s2" , pl_00.municion_de_pistola_recojer2); 
ini_write_real("dato3s2", "municion_de_pistola_recojer3s2" , pl_00.municion_de_pistola_recojer3); 
ini_write_real("dato3s2", "municion_de_pistola_recojer4s2" , pl_00.municion_de_pistola_recojer4); 
//ammo01
ini_write_real("dato4s2", "ammo01s2" , pl_00.ammo01); 
ini_write_real("dato4s2", "extra_ammo01s2" , pl_00.extra_ammo01);
//ammo01-recojer
ini_write_real("dato4s2", "municion_de_escopeta_recojers2" , pl_00.municion_de_escopeta_recojer);
ini_write_real("dato4s2", "municion_de_escopeta_recojer2s2" , pl_00.municion_de_escopeta_recojer2);
//wep01-recojer
ini_write_real("dato4s2", "Escopetas2" , pl_00.Escopeta);
//ammo02
ini_write_real("dato4s2", "ammo02s2" , pl_00.ammo02); 
ini_write_real("dato4s2", "extra_ammo02s2" , pl_00.extra_ammo02);
//ammo02-recojer
ini_write_real("dato4s2", "municion_de_fusilAsalto_recojers2" , pl_00.municion_de_fusilAsalto_recojer);
//wep02-recojer
ini_write_real("dato4s2", "fusilAsaltos2" , pl_00.fusilAsalto);
//salud-pl_00
ini_write_real("dato5s2", "saluds2" , pl_00.salud); 
ini_write_real("dato5s2", "salud_extras2" , pl_00.salud_extra);
//vida_pl_01
ini_write_real("dato5s2", "vida_pl_01s2" , pl_00.vida_pl_01); 
//puerta sala de espera
ini_write_real("dato6s2", "LLave_sala_esperas2" , pl_00.LLave_sala_espera); 
ini_write_real("dato6s2", "puerta_saladeespera_interactuars2" , pl_00.puerta_saladeespera_interactuar);
//salud_em00
ini_write_real("dato7s2", "salud_em00s2" , pl_00.vida_em00);
ini_write_real("dato7s2", "salud_em002s2" , pl_00.salud_em_002);
ini_write_real("dato7s2", "salud_em003s2" , pl_00.salud_em_003);
ini_write_real("dato7s2", "salud_em004s2" , pl_00.salud_em_004);
ini_write_real("dato7s2", "salud_em005s2" , pl_00.salud_em_005);
ini_write_real("dato7s2", "salud_em006s2" , pl_00.salud_em_006);
ini_write_real("dato7s2", "salud_em007s2" , pl_00.salud_em_007);
ini_write_real("dato7s2", "salud_em008s2" , pl_00.salud_em_008);
ini_write_real("dato7s2", "salud_em009s2" , pl_00.salud_em_009);
ini_write_real("dato7s2", "salud_em0010s2" , pl_00.salud_em_0010);
ini_write_real("dato7s2", "salud_em0011s2" , pl_00.salud_em_0011);
ini_write_real("dato7s2", "salud_em0012s2" , pl_00.salud_em_0012);
ini_write_real("dato7s2", "salud_em0013s2" , pl_00.salud_em_0013);
ini_write_real("dato7s2", "salud_em0014s2" , pl_00.salud_em_0014);
ini_write_real("dato7s2", "salud_em0015s2" , pl_00.salud_em_0015);
ini_write_real("dato7s2", "salud_em0016s2" , pl_00.salud_em_0016);
ini_write_real("dato7s2", "salud_em0017s2" , pl_00.salud_em_0017);
ini_write_real("dato7s2", "salud_em0018s2" , pl_00.salud_em_0018);
ini_write_real("dato7s2", "salud_em0019s2" , pl_00.salud_em_0019);
ini_write_real("dato7s2", "salud_em0020s2" , pl_00.salud_em_0020);
//botiquin_recojer
ini_write_real("dato8s2", "botiquines_recojers2" , pl_00.botiquines_recojer);
ini_write_real("dato8s2", "botiquines_recojer2s2" , pl_00.botiquines_recojer2);
ini_write_real("dato8s2", "botiquines_recojer3s2" , pl_00.botiquines_recojer3);
ini_write_real("dato8s2", "botiquines_recojer4s2" , pl_00.botiquines_recojer4);
//contraseña 1
ini_write_real("dato9s2", "contraseña1s2" , pl_00.contrasena1);

}
}
ini_close();