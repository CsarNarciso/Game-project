///barra de salud


depth = -1100;
x = pl_00.x-190
y = pl_00.y+150
image_speed = 0.5;


if pl_00.Abrir_INVENTARIO = false {
image_alpha = 0;
}

if pl_00.Abrir_INVENTARIO = true {
	image_alpha = 1;
//estado bien
if pl_00.salud = 6 { 
sprite_index = estadoVERDE;
}
//estado bien (medias)
if pl_00.salud = 5 { 
sprite_index = estadoVERDE;
}
// cuidado
if pl_00.salud = 4 {
sprite_index = estadoAMARILLO;	
}
// cuidado (medias)
if pl_00.salud = 3 {
sprite_index = estadoAMARILLO;	
}
//peligro
if pl_00.salud = 2 {
sprite_index = estadoNARANJA;	
}
//grave
if pl_00.salud = 1 {
sprite_index = estadoROJO;
}


}
