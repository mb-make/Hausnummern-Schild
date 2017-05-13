
include <config.scad>;
use <top.scad>;
use <side.scad>;

module side_planar()
{
    rotate([
        90,
        0,
        0
        ])
    side();
}

module parts()
{
    top();

    space = 4;
    for (i=[0:3])
    {
        translate([
            0,
            size_y/2 + size_z + (i+1)*space + i*size_z,
            0
            ])
        side_planar();
    }
}

parts();
