// Board for a mutually orthogonal latin square
// puzzle.  Google it, it's worth it.  Print the board
// in a neutral color like white, then print the pegs
// in n different colors for n different sizes.
// Then try to arrance the pegs so that no peg in any
// row or column has the same height or color.

// the number of rows and columns. Also, the number of
// heights and colors you need to print the pegs with.
// 4 and 5 are favorite, solvable values. 6 has no
// solution.  10 is a famous case known as a
// 'Euler-Buster'.
n = 5;

spacing = 20;
hole_size = 7;



// 'Peg' is reused in several contexts. It would be
// useful if I refactored this out into a shared
// module.
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
  minkowski(){
    cube([spacing*n,spacing*n,4]);
    sphere(r=4.5, $fn=30); 
  }

  for(i=[1:n]) {
    for(j=[1:n]) {
      translate([i*spacing - (spacing/2),
                 j*spacing - (spacing/2),
                 0.5]) {
        peg(hole_size*1.05,20);
      }
    }
  }
}