include <..\cardshowcase.scad>

placa_base = "AGP";

ancho_placa_base = placa_base;

for ( i = [0 : 5] ){
    single_slot(placa_base, i);
}