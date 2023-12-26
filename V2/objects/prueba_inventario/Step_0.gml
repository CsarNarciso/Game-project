

if pl_00.cuchillo_recojer = 1 {
/// inspeccionar cuchillo
x = pl_00.x-80
y = pl_00.y+150

if pl_00.Abrir_INVENTARIO = false {
	inspeccionar_cuchillo = false;
image_alpha = 0;
}

if pl_00.Abrir_INVENTARIO = true {
	image_alpha = 1;
}
}