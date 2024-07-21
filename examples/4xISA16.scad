include <..\cardshowcase.scad>

placa_base = "ISA16";

ancho_placa_base = placa_base;

for ( i = [0 : 3] ){
    single_slot(placa_base, i);
}