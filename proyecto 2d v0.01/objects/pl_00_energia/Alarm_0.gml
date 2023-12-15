/////  control de energia gastada al correr y regenerada al caminar (pl_00)

if pl_00.correr > 0 {
if pl_00.v = 2 {
pl_00.correr -= 1;
}
alarm[0] = 1;
}
else {
pl_00.correr -= 0;	
}

