///@description  retroseso por bala

///////////retroseso al recibir daño por bala////////
if retroceso_dano = 0 {
retroceso_dano = 1;
}
// WIT-WEP00
if danoEm00_arma = 4 {
alarm[1] = 20
}
// WEP00-BAL00
if danoEm00_arma = 1 {
alarm[1] = 20
}
// WEP01-BAL01
if danoEm00_arma = 2 {
alarm[1] = 50
}
// WEP02-BAL02
if danoEm00_arma = 3 {
alarm[1] = 1
}



