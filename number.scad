
include <config.scad>;

module number()
{
    linear_extrude(material_z, center=true)
    text(
        number,
        font=font,
        size=font_size,
        halign="center",
        valign="center"
        );
}

number();
