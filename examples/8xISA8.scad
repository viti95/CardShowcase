include <..\cardshowcase.scad>

placa_base = "ISA8";

ancho_placa_base = placa_base;

for ( i = [0 : 7] ){
    single_slot(placa_base, i);
}