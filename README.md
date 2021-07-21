# blossom-kicad
A simple PCB in the shape of a flower designed using KiCad

[3D-render](images/blossom.png)

# The KiCad Project

The project related files are to be found in `kicad`. The aim of the project was to learn a lot and besides that create a small PCB controlled by an ATtiny85 which controls some LEDs and reads in input from three buttons.

[layout](images/layout-blossom.png)

The 12 LEDs are controlled by just 4 pins using Charlieplexing. And the state of the 3 buttons is sampled by charging a capacitor depending on which button is pressed and reading the analog input.

The firmware enough for some simple blinking can be found here TODO

# The board outline

You can find the files used to create the board outline and various positions for holes and the position of the LEDs under `cad`.

To open the files you need to install [OpenSCAD](https://openscad.org/).

# Custom silkscreen icons

Using a tool called `svg2mod` I was able to convert a SVG icon drawn in Inkscape to a KiCad footprint module file. You can find the files in `icons`.

You can easily do this with this command:

> svg2mod -i blossom.svg -o blossom.kicad_mod -p 0.1

where `p` stands for precision, the smaller the more precise.

# The end product

[layout](images/blossom-top.jpg)
