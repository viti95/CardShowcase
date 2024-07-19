
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

soportes = true;

module soporte_tarjeta_isa8()
{

    desplazamiento = 2;

    posicion_tarjeta = 28;
    longitud_tarjeta = 81;
    altura_borde_tarjeta = 28;
    altura_interior_tarjeta = 20;

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

module soporte_tarjeta_isa16()
{

    desplazamiento = 2;

    posicion_tarjeta = 28;
    longitud_tarjeta = 135;
    altura_borde_tarjeta = 28;
    altura_interior_tarjeta = 20;

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

module soporte_tarjeta_pci()
{

    desplazamiento = 16;

    posicion_tarjeta = 43;
    longitud_tarjeta = 80;
    altura_borde_tarjeta = 28;
    altura_interior_tarjeta = 20;

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

module soporte_tarjeta_agp()
{

    desplazamiento = 16;

    posicion_tarjeta = 70;
    longitud_tarjeta = 84;
    altura_borde_tarjeta = 28;
    altura_interior_tarjeta = 20;

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

module single_slot(tipo, position)
{

    displacement = position * 30;

    color("cyan") cube([ 178, 30 + displacement, 2 ]);


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

        if (tipo=="ISA8") {
            translate([0,displacement,0]) soporte_tarjeta_isa8();
        } else if (tipo=="ISA16") {
            translate([0,displacement,0]) soporte_tarjeta_isa16();
        } else if (tipo=="PCI") {
            translate([0,displacement,0]) soporte_tarjeta_pci();
        } else if (tipo=="AGP") {
            translate([0,displacement,0]) soporte_tarjeta_agp();
        }

}

single_slot("ISA16",0);
single_slot("ISA8",1);
single_slot("PCI",2);
single_slot("empty",3);
single_slot("PCI", 4);
single_slot("AGP", 5);
