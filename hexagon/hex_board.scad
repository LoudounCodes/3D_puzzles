// a board for the hex game. This is really not
// necessary, but is a nice completion of the game
// and makes it mirror the triangle variant, which does
// need the board.

$piece_height = 4;
$piece_radius = (14) * 1.03;

$hex_inside = (sqrt(3)) * $piece_radius;

difference() {
  cylinder(r = $piece_radius * 2.8,
           h = 2,
           $fn = 60);

  translate([0,0,1]) { 
    cylinder(r = $piece_radius,
             h = $piece_height,
             $fn = 6);
                      
    rotation_offset = 360/6;
    for(i=[0:5]) {
      rotate([0,0,(rotation_offset * i)]) {
        translate([0,$hex_inside,0]) {
          cylinder(r = $piece_radius,
                   h = $piece_height,
                   $fn = 6);
        }
      }
    }
  }
}