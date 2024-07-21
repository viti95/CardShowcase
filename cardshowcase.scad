
module prism(l, w, h)
{
    polyhedron(points =
                   [
                       [ 0, 0, h ],              // 0    front top corner
                       [ 0, 0, 0 ], [ w, 0, 0 ], // 1, 2 front left & right bottom corners
                       [ 0, l, h ],              // 3    back top corner
                       [ 0, l, 0 ], [ w, l, 0 ]  // 4, 5 back left & right bottom corners
                   ],
               faces = [
                   // points for all faces must be ordered clockwise when looking in
                   [ 0, 2, 1 ],    // top face
                   [ 3, 4, 5 ],    // base face
                   [ 0, 1, 4, 3 ], // h face
                   [ 1, 2, 5, 4 ], // w face
                   [ 0, 3, 5, 2 ], // hypotenuse face
               ]);
}

module pyramid(w, l, h, mw, ml)
{
    polyhedron(points = [ [ 0, 0, 0 ], [ w, 0, 0 ], [ 0, l, 0 ], [ w, l, 0 ], [ mw, ml, h ] ], faces = [
        [ 4, 1, 0 ], [ 4, 3, 1 ], [ 4, 2, 3 ], [ 4, 0, 2 ],
        // base
        [ 0, 1, 2 ], [ 2, 1, 3 ]
    ]);
}

soportes = false;

module base_tarjeta(desplazamiento, posicion_tarjeta, longitud_tarjeta, altura_borde_tarjeta, altura_interior_tarjeta)
{
    color("purple") translate([ posicion_tarjeta, desplazamiento + 1, 2 ])
        cube([ longitud_tarjeta, 4, altura_borde_tarjeta ]);

    color("pink") translate([ posicion_tarjeta, desplazamiento + 5, 2 ])
        cube([ longitud_tarjeta, 2, altura_interior_tarjeta ]);

    color("purple") translate([ posicion_tarjeta, desplazamiento + 7, 2 ])
        cube([ longitud_tarjeta, 4, altura_borde_tarjeta ]);

    if (soportes)
    {
        color("lightgreen") rotate([ 0, 0, 180 ]) translate([ -posicion_tarjeta, (-desplazamiento - 11), 2 ])
            prism(10, 6, 14);

        color("lightgreen") translate([ posicion_tarjeta + longitud_tarjeta, desplazamiento + 1, 2 ]) prism(10, 6, 14);
    }
}

module soporte_tarjeta(tipo)
{
    if (tipo == "ISA8")
    {
        desplazamiento = 2;
        posicion_tarjeta = 28;
        longitud_tarjeta = 81;
        altura_borde_tarjeta = 28;
        altura_interior_tarjeta = 20;

        base_tarjeta(desplazamiento, posicion_tarjeta, longitud_tarjeta, altura_borde_tarjeta, altura_interior_tarjeta);
    }
    else if (tipo == "ISA16")
    {
        soporte_tarjeta("ISA8");

        desplazamiento = 2;
        posicion_tarjeta = 28 + 81 + 6;
        longitud_tarjeta = 48;
        altura_borde_tarjeta = 28;
        altura_interior_tarjeta = 20;

        base_tarjeta(desplazamiento, posicion_tarjeta, longitud_tarjeta, altura_borde_tarjeta, altura_interior_tarjeta);
    }
    else if (tipo == "VLB")
    {
        soporte_tarjeta("ISA16");

        desplazamiento = 2;
        posicion_tarjeta = 28 + 135 + 10;
        longitud_tarjeta = 75;
        altura_borde_tarjeta = 28;
        altura_interior_tarjeta = 20;

        base_tarjeta(desplazamiento, posicion_tarjeta, longitud_tarjeta, altura_borde_tarjeta, altura_interior_tarjeta);
    }
    else if (tipo == "PCI")
    {
        desplazamiento = 16;
        posicion_tarjeta = 43;
        longitud_tarjeta = 82;
        altura_borde_tarjeta = 28;
        altura_interior_tarjeta = 20;

        base_tarjeta(desplazamiento, posicion_tarjeta, longitud_tarjeta, altura_borde_tarjeta, altura_interior_tarjeta);
    }
    else if (tipo == "AGP")
    {
        desplazamiento = 16;
        posicion_tarjeta = 70;
        longitud_tarjeta = 84;
        altura_borde_tarjeta = 28;
        altura_interior_tarjeta = 20;

        base_tarjeta(desplazamiento, posicion_tarjeta, longitud_tarjeta, altura_borde_tarjeta, altura_interior_tarjeta);
    }
}

module single_slot(tipo, position)
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

        if (soportes)
        {
            color("lightgreen") translate([ 6, 7 + displacement, 2 ]) prism(16, 6, 8);

            color("lightgreen") translate([ 6, 23 + displacement, 2 ]) rotate([ 0, 0, 90 ]) prism(6, 6, 8);

            color("lightgreen") translate([ 0, 7 + displacement, 2 ]) rotate([ 0, 0, -90 ]) prism(6, 6, 8);

            color("lightgreen") translate([ 6, 23 + displacement, 2 ]) pyramid(6, 6, 8, 0, 0);

            color("lightgreen") translate([ 6, 7 + displacement, 2 ]) rotate([ 0, 0, 270 ]) pyramid(6, 6, 8, 0, 0);
        }
    }

    if (tipo == "ISA8" || tipo == "ISA16" || tipo == "PCI" || tipo == "AGP" || tipo == "VLB")
    {
        translate([ 0, displacement, 0 ]) soporte_tarjeta(tipo);
    }
}

ancho_placa_base = "VLB";

single_slot("ISA8", 0);
single_slot("ISA16", 1);
single_slot("VLB", 2);
single_slot("PCI", 3);
single_slot("AGP", 4);