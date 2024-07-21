include <..\cardshowcase.scad>

placa_base = "VLB";

ancho_placa_base = placa_base;

for ( i = [0 : 2] ){
    single_slot(placa_base, i);
}