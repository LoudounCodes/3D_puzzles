// pegs that go with the mols board.  Read the
// comments there to understand what's going on.

// these values should mirror the ones used when
// printing the board.
n = 5;
peg_size = 6.75;
differential = 8;

// this is the same peg module used in board.
// refactor this to one location.
module peg(r, h){
  union(){
    cylinder(r = r,
             h = h,
             $fn = 30);
    translate([0,0,h]) {
      sphere(r, $fn = 30);
    }
  }
}


for(i=[0:4]) {
  height =  (2+i)*differential;  
  translate([i*20,0,0]) peg(peg_size, height);
}
