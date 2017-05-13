
include <config.scad>;

module side_with_top_noses()
{
    // base
    translate([
        0,
        0,
        size_z/2
        ])
    cube([
        size_x,
        material_z,
        size_z
        ], center=true);

    // top noses
    for (x = [
            -size_x/3,
            +size_x/3
            ])
    {
        translate([
            x,
            0,
            size_z + material_z/2
            ])
        cube([
            size_x/3,
            material_z,
            material_z
            ], center=true);
    }
}

module side()
{
    difference()
    {
        side_with_top_noses();

        // nose cutaway left top
        translate([
            -size_x/2 + material_z/2,
            0,
            size_z/6 + 2*size_z/3 + material_z/2
            ])
        cube([
            material_z + nothing,
            material_z + nothing,
            size_z/3 + material_z + nothing
            ], center=true);

        // nose cutaway left bottom
        translate([
            -size_x/2 + material_z/2,
            0,
            size_z/6
            ])
        cube([
            material_z + nothing,
            material_z + nothing,
            size_z/3 + nothing
            ], center=true);

        // nose cutaway right
        translate([
            size_x/2 - material_z/2,
            0,
            size_z/6 + size_z/3
            ])
        cube([
            material_z + nothing,
            material_z + nothing,
            size_z/3
            ], center=true);
    }
}

module side_translated()
{
    translate([
        0,
        -size_x/2 + material_z/2,
        0
        ])
    side();
}

side();
