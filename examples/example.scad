include <..\cardshowcase.scad>

// override_base is optional, can be a number (mm) or a type of card ("ISA16", ...)
override_base = 250;

single_slot("ISA8", 0);
single_slot("ISA16", 1);
single_slot("EISA", 2);
single_slot("VLB", 3);
single_slot("PCI", 4);
single_slot("AGP", 5);
single_slot("PCIe16", 6);