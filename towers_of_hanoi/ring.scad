// Doing a minkowski sum between a donut and a sphere will
// take some time to render.  It's worth it in the quality
// of the final piece.

// The tower is designed to hold 7 rings varying in diameter
// from 40mm to 100mm.  But that's why you have the code!
// Mix it up with different sizes and colors.
$diameter = 40;

// This is a curvy piece.  The higher you make this number,
// the smoother it will be, but the longer it will take to
// render. 30 is OpenScad's default. Low values like 10
// turn into nice chunky shapes.
$quality = 10;

module ring(x) {
    minkowski() {  
      difference() {
        cylinder(r=x-4, h=3, $fn=$quality);
        translate([0,0,-5]){
          cylinder(r=12,h=20, $fn=$quality);
        }
      }   
      sphere(4, $fn=$quality);
    }
  }

ring($diameter / 2);