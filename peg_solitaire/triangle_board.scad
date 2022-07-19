
n = 5;

spacing = 16;
hole_size = 8;


// height offset for each row of pegs.
p = sqrt(3)/2;

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
  rotate(90) {
    translate([0,0,3])
    minkowski(){
      cylinder(2,
              spacing*(n-1) * p,
              spacing*(n-1) * p,
              $fn=3);
      sphere(r=3, $fn=30); 
    }
  }

  translate([-((n-1)/2)*spacing,
             -(spacing * (1/p)),
             1]) {
    for(i=[0:n-1]) {
      for(j=[0:n-1-i]) {
        translate([(i * spacing) + (j * spacing / 2),
                    (j * (spacing * p)),
                    0]) {  
          peg((hole_size/2)*1.1,20);
        }  
      }
    }
  }
 }