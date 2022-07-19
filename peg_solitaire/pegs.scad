// this is the same peg module used in board.
// refactor this to one location.
module peg(r, h){
  union(){
    cylinder(r = r,
             h = h,
             $fn = 30);
    //translate([0,0,h])  sphere(r, $fn = 30);
   
  }
}

for(i=[0:8]) {
  for (j=[0:6]) {
    translate([15*j,15*i,0]) peg(4,25);
  }
}