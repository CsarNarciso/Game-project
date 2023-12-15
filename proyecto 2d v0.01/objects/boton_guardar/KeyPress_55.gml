if distance_to_object(pl_00) < 6 {
ini_open("partida.ini");
//posicion pl00
ini_write_real("dato1", "PosX" , pl_00.x); 
ini_write_real("dato1", "PosY" , pl_00.y); 
//ammo00
ini_write_real("dato2", "ammo" , pl_00.ammo); 
ini_write_real("dato2", "extra_ammo" , pl_00.extra_ammo);
//ammo00-recojer
ini_write_real("dato3", "municion_de_pistola_recojer" , pl_00.municion_de_pistola_recojer); 
ini_write_real("dato3", "municion_de_pistola_recojer2" , pl_00.municion_de_pistola_recojer2); 
ini_write_real("dato3", "municion_de_pistola_recojer3" , pl_00.municion_de_pistola_recojer3); 
ini_write_real("dato3", "municion_de_pistola_recojer4" , pl_00.municion_de_pistola_recojer4); 
//ammo01
ini_write_real("dato4", "ammo01" , pl_00.ammo01); 
ini_write_real("dato4", "extra_ammo01" , pl_00.extra_ammo01);
//ammo01-recojer
ini_write_real("dato4", "municion_de_escopeta_recojer" , pl_00.municion_de_escopeta_recojer);
ini_write_real("dato4", "municion_de_escopeta_recojer2" , pl_00.municion_de_escopeta_recojer2);
//wep01-recojer
ini_write_real("dato4", "Escopeta" , pl_00.Escopeta);
//ammo02
ini_write_real("dato4", "ammo02" , pl_00.ammo02); 
ini_write_real("dato4", "extra_ammo02" , pl_00.extra_ammo02);
//ammo02-recojer
ini_write_real("dato4", "municion_de_fusilAsalto_recojer" , pl_00.municion_de_fusilAsalto_recojer);
//wep02-recojer
ini_write_real("dato4", "fusilAsalto" , pl_00.fusilAsalto);
//salud-pl_00
ini_write_real("dato5", "salud" , pl_00.salud); 
ini_write_real("dato5", "salud_extra" , pl_00.salud_extra);
//vida_pl_01
ini_write_real("dato5", "vida_pl_01" , pl_00.vida_pl_01); 
//puerta sala de espera
ini_write_real("dato6", "LLave_sala_espera" , pl_00.LLave_sala_espera); 
ini_write_real("dato6", "puerta_saladeespera_interactuar" , pl_00.puerta_saladeespera_interactuar);
//salud_em00
ini_write_real("dato7", "salud_em00" , pl_00.salud_em_00);
ini_write_real("dato7", "salud_em002" , pl_00.salud_em_002);
ini_write_real("dato7", "salud_em003" , pl_00.salud_em_003);
ini_write_real("dato7", "salud_em004" , pl_00.salud_em_004);
ini_write_real("dato7", "salud_em005" , pl_00.salud_em_005);
ini_write_real("dato7", "salud_em006" , pl_00.salud_em_006);
ini_write_real("dato7", "salud_em007" , pl_00.salud_em_007);
ini_write_real("dato7", "salud_em008" , pl_00.salud_em_008);
ini_write_real("dato7", "salud_em009" , pl_00.salud_em_009);
ini_write_real("dato7", "salud_em0010" , pl_00.salud_em_0010);
ini_write_real("dato7", "salud_em0011" , pl_00.salud_em_0011);
ini_write_real("dato7", "salud_em0012" , pl_00.salud_em_0012);
ini_write_real("dato7", "salud_em0013" , pl_00.salud_em_0013);
ini_write_real("dato7", "salud_em0014" , pl_00.salud_em_0014);
ini_write_real("dato7", "salud_em0015" , pl_00.salud_em_0015);
ini_write_real("dato7", "salud_em0016" , pl_00.salud_em_0016);
ini_write_real("dato7", "salud_em0017" , pl_00.salud_em_0017);
ini_write_real("dato7", "salud_em0018" , pl_00.salud_em_0018);
ini_write_real("dato7", "salud_em0019" , pl_00.salud_em_0019);
ini_write_real("dato7", "salud_em0020" , pl_00.salud_em_0020);
//botiquin_recojer
ini_write_real("dato8", "botiquines_recojer" , pl_00.botiquines_recojer);
ini_write_real("dato8", "botiquines_recojer2" , pl_00.botiquines_recojer2);
ini_write_real("dato8", "botiquines_recojer3" , pl_00.botiquines_recojer3);
ini_write_real("dato8", "botiquines_recojer4" , pl_00.botiquines_recojer4);
//contraseña 1
ini_write_real("dato9", "contraseña1" , pl_00.contrasena1);
}
ini_close();


