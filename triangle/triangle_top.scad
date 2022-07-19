$size = 70;

module base() {
 difference() {

 cylinder(h = 10,
         r1 = $size,
         r2 = $size,
         $fn = 3);
 
  translate([0,0,4]) {
    cylinder(h = 7,
         r1 = $size - 2,
         r2 = $size - 1,
         $fn = 3);
  }
  
}
}


module nib() {
  translate([-(($size/2)-1.5),0,9]) {
    linear_extrude(1) {
      square([3,4], true);
    }
  }
}
    
    
difference() {
  base();

  translate([0,0,1]) {
    cylinder(h = 7,
             r1 = $size  - 14.5,
             r2 = $size - 14.5,
             $fn = 3);
  }
 
}

nib();
rotate([0,0,120] ) {
  nib();
}
rotate([0,0,-120] ) {
  nib();
}
    