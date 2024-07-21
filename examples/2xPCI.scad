include <..\cardshowcase.scad>

placa_base = "PCI";

ancho_placa_base = placa_base;

for ( i = [0 : 1] ){
    single_slot(placa_base, i);
}