// can create the two variants of the hex piece.
$variant = "edge";  // "edge" or "corner"


// controls the size of the piece. If you change these,
// also create a matching board.
$piece_height = 4;
$piece_radius = 14;
$scaling = 0.98;



$rotation_offset = 360/6;

module corner_divet() {
  translate([0,0,$piece_height*5/4]) {  
    sphere(2, $fn=30);
  }
}

module edge_divet() {
  translate([0,0,$piece_height*5/4
    ]) {
    hull() {
      translate([0,-1.5,0]) {    
        sphere(1.75, $fn=30);
      }
      translate([0,1.5,0]) {
        sphere(1.75, $fn=30);
      }
    }
    
  }
}

function rotation_delta() =
  ($variant == "edge") ? $rotation_offset/2 : 0;

module piece() {
difference() {
  cylinder(r = $piece_radius,
           h = $piece_height,
           $fn=6);
  for(i=[0:5]){
    rotate([0,0,(($rotation_offset * i) + rotation_delta())]) {
      translate([$piece_radius*.66,0,0]) {  
        if ($variant == "edge") {  
          edge_divet();
        } else {
          corner_divet();
        }
      }
    }
  }
}
}


for (j=[0:2]) {
  for (i=[0:4]) {
    translate([j*43,i*26,0])
      scale([$scaling,$scaling,1])
        piece();
    
    translate([(j*43)+22,(i*26)+13,0])
      scale([$scaling,$scaling,1])
        piece();
  }
}