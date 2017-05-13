
include <config.scad>;
use <top.scad>;
use <side.scad>;
use <number.scad>;

module model()
{
    color("blue")
    translate([
        0,
        0,
        +material_z/2 + size_z
        ])
    top();

    color("yellow")
    rotate(90)
    side_translated();

    color("green")
    rotate(180)
    side_translated();

    color("magenta")
    rotate(270)
    side_translated();
}

model();
