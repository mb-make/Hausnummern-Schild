
include <config.scad>;
use <top.scad>;
use <side.scad>;
use <number.scad>;

module model()
{
    color("darkcyan")
    translate([
        0,
        0,
        +material_z/2 + size_z
        ])
    top();

    color("darkmagenta")
    translate([
        0,
        0,
        size_z + 3*material_z/2
        ])
    number();

    color("darkred")
    rotate(90)
    side_translated();

    color("green")
    rotate(180)
    side_translated();

    color("blue")
    rotate(270)
    side_translated();
}

model();
