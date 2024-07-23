module base_tarjeta(desplazamiento, posicion_tarjeta, longitud_tarjeta, altura_borde_tarjeta, altura_interior_tarjeta)
{
    color("purple") translate([ posicion_tarjeta, desplazamiento + 1, 0 ])
        cube([ longitud_tarjeta, 4, altura_borde_tarjeta + 2 ]);

    color("pink") translate([ posicion_tarjeta, desplazamiento + 5, 0 ])
        cube([ longitud_tarjeta, 2, altura_interior_tarjeta + 2 ]);

    color("purple") translate([ posicion_tarjeta, desplazamiento + 7, 0 ])
        cube([ longitud_tarjeta, 4, altura_borde_tarjeta + 2 ]);
}

module base_tarjeta_corta(desplazamiento, posicion_tarjeta, longitud_tarjeta, altura_borde_tarjeta,
                          altura_interior_tarjeta, tab_size)
{
    color("purple") translate([ posicion_tarjeta, desplazamiento + 1, 0 ])
        cube([ tab_size, 4, altura_borde_tarjeta + 2 ]);

    color("pink") translate([ posicion_tarjeta, desplazamiento + 5, 0 ])
        cube([ tab_size, 2, altura_interior_tarjeta + 2 ]);

    color("purple") translate([ posicion_tarjeta, desplazamiento + 7, 0 ])
        cube([ tab_size, 4, altura_borde_tarjeta + 2 ]);

    color("purple") translate([ longitud_tarjeta + posicion_tarjeta - tab_size, desplazamiento + 1, 0 ])
        cube([ tab_size, 4, altura_borde_tarjeta + 2 ]);

    color("pink") translate([ longitud_tarjeta + posicion_tarjeta - tab_size, desplazamiento + 5, 0 ])
        cube([ tab_size, 2, altura_interior_tarjeta + 2 ]);

    color("purple") translate([ longitud_tarjeta + posicion_tarjeta - tab_size, desplazamiento + 7, 0 ])
        cube([ tab_size, 4, altura_borde_tarjeta + 2 ]);
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

        if (size == 0)
        {
            base_tarjeta(desplazamiento, posicion_tarjeta, longitud_tarjeta, altura_borde_tarjeta,
                         altura_interior_tarjeta);
        }
        else
        {
            base_tarjeta_corta(desplazamiento, posicion_tarjeta, longitud_tarjeta, altura_borde_tarjeta,
                               altura_interior_tarjeta, size);
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

        if (size == 0)
        {
            base_tarjeta(desplazamiento, posicion_tarjeta, longitud_tarjeta, altura_borde_tarjeta,
                         altura_interior_tarjeta);
        }
        else
        {
            base_tarjeta_corta(desplazamiento, posicion_tarjeta, longitud_tarjeta, altura_borde_tarjeta,
                               altura_interior_tarjeta, size);
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

        if (size == 0)
        {
            base_tarjeta(desplazamiento, posicion_tarjeta, longitud_tarjeta, altura_borde_tarjeta,
                         altura_interior_tarjeta);
        }
        else
        {
            base_tarjeta_corta(desplazamiento, posicion_tarjeta, longitud_tarjeta, altura_borde_tarjeta,
                               altura_interior_tarjeta, size);
        }
    }
    else if (tipo == "PCI")
    {
        desplazamiento = 16;
        posicion_tarjeta = 43;
        longitud_tarjeta = 82;
        altura_borde_tarjeta = 28;
        altura_interior_tarjeta = 20;

        if (size == 0)
        {
            base_tarjeta(desplazamiento, posicion_tarjeta, longitud_tarjeta, altura_borde_tarjeta,
                         altura_interior_tarjeta);
        }
        else
        {
            base_tarjeta_corta(desplazamiento, posicion_tarjeta, longitud_tarjeta, altura_borde_tarjeta,
                               altura_interior_tarjeta, size);
        }
    }
    else if (tipo == "AGP")
    {
        desplazamiento = 16;
        posicion_tarjeta = 70;
        longitud_tarjeta = 84;
        altura_borde_tarjeta = 28;
        altura_interior_tarjeta = 20;

        if (size == 0)
        {
            base_tarjeta(desplazamiento, posicion_tarjeta, longitud_tarjeta, altura_borde_tarjeta,
                         altura_interior_tarjeta);
        }
        else
        {
            base_tarjeta_corta(desplazamiento, posicion_tarjeta, longitud_tarjeta, altura_borde_tarjeta,
                               altura_interior_tarjeta, size);
        }
    }
}

module base(tipo)
{
    if (tipo == "ISA8")
    {
        color("cyan") cube([ 119, 30, 2 ]);
    }
    else if (tipo == "ISA16")
    {
        color("cyan") cube([ 173, 30, 2 ]);
    }
    else if (tipo == "VLB")
    {
        color("cyan") cube([ 258, 30, 2 ]);
    }
    else if (tipo == "PCI")
    {
        color("cyan") cube([ 135, 30, 2 ]);
    }
    else if (tipo == "AGP")
    {
        color("cyan") cube([ 164, 30, 2 ]);
    }
}

module single_slot(tipo, position, size = 0)
{
    displacement = position * 30;

    color("red") translate([ 0, 7 + displacement, 0 ]) cube([ 2, 16, 10 ]);

    color("red") translate([ 4, 7 + displacement, 0 ]) cube([ 2, 16, 10 ]);

    color("red") translate([ 2, 7 + displacement, 0 ]) cube([ 2, 2, 10 ]);

    color("red") translate([ 2, 21 + displacement, 0 ]) cube([ 2, 2, 10 ]);

    if (tipo == "ISA8" || tipo == "ISA16" || tipo == "PCI" || tipo == "AGP" || tipo == "VLB")
    {
        translate([ 0, displacement, 0 ]) soporte_tarjeta(tipo, size);
        translate([ 0, displacement, 0 ]) base(tipo);
    }
}