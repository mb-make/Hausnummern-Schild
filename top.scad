
include <config.scad>;

module top()
{
    difference()
    {
        cube([
            size_x,
            size_y,
            material_z
            ], center=true);

        for (x = [
                -size_x/2 + size_x/6,
                +size_x/2 - size_x/6
                ])
            for (y = [
                    -size_y/2 + material_z/2,
                    +size_y/2 - material_z/2
                    ])
            {
                translate([
                    x,
                    y,
                    0
                    ])
                cube([
                    size_x/3 + nothing,
                    material_z + nothing,
                    material_z + nothing
                    ], center=true);
            }

        for (x = [
                -size_x/2 + material_z/2,
                +size_x/2 - material_z/2
                ])
            for (y = [
                    -size_y/3,
                    +size_y/3
                    ])
            {
                translate([
                    x,
                    y,
                    0
                    ])
                cube([
                    material_z + nothing,
                    size_y/3 + nothing,
                    material_z + nothing
                    ], center=true);
            }
    }
}

top();
