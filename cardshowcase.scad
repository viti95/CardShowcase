module base_tarjeta(desplazamiento, posicion_tarjeta, longitud_tarjeta, altura_borde_tarjeta, altura_interior_tarjeta)
{
    color("purple") translate([ posicion_tarjeta, desplazamiento + 1, 2 ])
        cube([ longitud_tarjeta, 4, altura_borde_tarjeta ]);

    color("pink") translate([ posicion_tarjeta, desplazamiento + 5, 2 ])
        cube([ longitud_tarjeta, 2, altura_interior_tarjeta ]);

    color("purple") translate([ posicion_tarjeta, desplazamiento + 7, 2 ])
        cube([ longitud_tarjeta, 4, altura_borde_tarjeta ]);
}

module base_tarjeta_corta(desplazamiento, posicion_tarjeta, longitud_tarjeta, altura_borde_tarjeta, altura_interior_tarjeta, tab_size)
{
    color("purple") translate([ posicion_tarjeta, desplazamiento + 1, 2 ])
        cube([ tab_size, 4, altura_borde_tarjeta ]);

    color("pink") translate([ posicion_tarjeta, desplazamiento + 5, 2 ])
        cube([ tab_size, 2, altura_interior_tarjeta ]);

    color("purple") translate([ posicion_tarjeta, desplazamiento + 7, 2 ])
        cube([ tab_size, 4, altura_borde_tarjeta ]);

    color("purple") translate([ longitud_tarjeta + posicion_tarjeta - tab_size, desplazamiento + 1, 2 ])
        cube([ tab_size, 4, altura_borde_tarjeta ]);

    color("pink") translate([ longitud_tarjeta + posicion_tarjeta - tab_size, desplazamiento + 5, 2 ])
        cube([ tab_size, 2, altura_interior_tarjeta ]);

    color("purple") translate([ longitud_tarjeta + posicion_tarjeta - tab_size, desplazamiento + 7, 2 ])
        cube([ tab_size, 4, altura_borde_tarjeta ]);
}

module soporte_tarjeta(tipo, size)
{
    if (tipo == "ISA8")
    {
        desplazamiento = 2;
        posicion_tarjeta = 28;
        longitud_tarjeta = 81;
        altura_borde_tarjeta = 28;
        altura_interior_tarjeta = 20;

        if (size == 0) {
            base_tarjeta(desplazamiento, posicion_tarjeta, longitud_tarjeta, altura_borde_tarjeta, altura_interior_tarjeta);
        } else {
            base_tarjeta_corta(desplazamiento, posicion_tarjeta, longitud_tarjeta, altura_borde_tarjeta, altura_interior_tarjeta, size);
        }
    }
    else if (tipo == "ISA16")
    {
        soporte_tarjeta("ISA8", size);

        desplazamiento = 2;
        posicion_tarjeta = 28 + 81 + 6;
        longitud_tarjeta = 48;
        altura_borde_tarjeta = 28;
        altura_interior_tarjeta = 20;

        if (size == 0) {
            base_tarjeta(desplazamiento, posicion_tarjeta, longitud_tarjeta, altura_borde_tarjeta, altura_interior_tarjeta);
        } else {
            base_tarjeta_corta(desplazamiento, posicion_tarjeta, longitud_tarjeta, altura_borde_tarjeta, altura_interior_tarjeta, size);
        }
    }
    else if (tipo == "VLB")
    {
        soporte_tarjeta("ISA16", size);

        desplazamiento = 2;
        posicion_tarjeta = 28 + 135 + 10;
        longitud_tarjeta = 75;
        altura_borde_tarjeta = 28;
        altura_interior_tarjeta = 20;

        if (size == 0) {
            base_tarjeta(desplazamiento, posicion_tarjeta, longitud_tarjeta, altura_borde_tarjeta, altura_interior_tarjeta);
        } else {
            base_tarjeta_corta(desplazamiento, posicion_tarjeta, longitud_tarjeta, altura_borde_tarjeta, altura_interior_tarjeta, size);
        }
    }
    else if (tipo == "PCI")
    {
        desplazamiento = 16;
        posicion_tarjeta = 43;
        longitud_tarjeta = 82;
        altura_borde_tarjeta = 28;
        altura_interior_tarjeta = 20;

        if (size == 0) {
            base_tarjeta(desplazamiento, posicion_tarjeta, longitud_tarjeta, altura_borde_tarjeta, altura_interior_tarjeta);
        } else {
            base_tarjeta_corta(desplazamiento, posicion_tarjeta, longitud_tarjeta, altura_borde_tarjeta, altura_interior_tarjeta, size);
        }
    }
    else if (tipo == "AGP")
    {
        desplazamiento = 16;
        posicion_tarjeta = 70;
        longitud_tarjeta = 84;
        altura_borde_tarjeta = 28;
        altura_interior_tarjeta = 20;

        if (size == 0) {
            base_tarjeta(desplazamiento, posicion_tarjeta, longitud_tarjeta, altura_borde_tarjeta, altura_interior_tarjeta);
        } else {
            base_tarjeta_corta(desplazamiento, posicion_tarjeta, longitud_tarjeta, altura_borde_tarjeta, altura_interior_tarjeta, size);
        }
    }
}

module single_slot(tipo, position, size = 0)
{

    displacement = position * 30;

    if (ancho_placa_base == "ISA8")
    {

        color("cyan") cube([ 119, 30 + displacement, 2 ]);
    }
    else if (ancho_placa_base == "ISA16")
    {

        color("cyan") cube([ 173, 30 + displacement, 2 ]);
    }
    else if (ancho_placa_base == "VLB")
    {

        color("cyan") cube([ 258, 30 + displacement, 2 ]);
    }
    else if (ancho_placa_base == "PCI")
    {

        color("cyan") cube([ 135, 30 + displacement, 2 ]);
    }
    else if (ancho_placa_base == "AGP")
    {

        color("cyan") cube([ 164, 30 + displacement, 2 ]);
    }

    if (tipo != "empty")
    {
        color("red") translate([ 0, 7 + displacement, 2 ]) cube([ 2, 16, 8 ]);

        color("red") translate([ 4, 7 + displacement, 2 ]) cube([ 2, 16, 8 ]);

        color("red") translate([ 2, 7 + displacement, 2 ]) cube([ 2, 2, 8 ]);

        color("red") translate([ 2, 21 + displacement, 2 ]) cube([ 2, 2, 8 ]);
    }

    if (tipo == "ISA8" || tipo == "ISA16" || tipo == "PCI" || tipo == "AGP" || tipo == "VLB")
    {
        translate([ 0, displacement, 0 ]) soporte_tarjeta(tipo, size);
    }
}