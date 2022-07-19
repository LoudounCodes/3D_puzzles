spacing = 16;
hole_size = 4;



n = 7;

// reusing peg from my other code. Here it's just
// used to punch a hole
module peg(r, h) {
  union(){
    cylinder(r = r,
             h = h,
             $fn = 30);
    translate([0,0,h]) {
      sphere(r);
    }
  }
}


difference() {
translate([0,0,4])
  minkowski() {
    union() {
      cube([3*spacing,7*spacing,2], center = true);
      cube([7*spacing,3*spacing,2], center = true);
    }
    sphere(r=3, $fn=30); 
  }

translate([((n-1)/2) * -spacing,
           ((n-1)/2) * -spacing,
           0]) {
    for(i=[2:4]) {
      for(j=[0:n-1]) {
        translate([i * spacing,
                   j * spacing,
                   1]) {
          peg(hole_size*1.1,20);
        }
      }
    }
  }
  
  translate([((n-1)/2) * -spacing,
           ((n-1)/2) * -spacing,
           0]) {
    for(i=[0:n-1]) {
      for(j=[2:4]) {
        translate([i * spacing,
                   j * spacing,
                   1]) {
          peg(hole_size*1.1,20);
        }
      }
    }
  }
  }
  