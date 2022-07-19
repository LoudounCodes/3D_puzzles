$size = 70;
$inner_size = $size - 15;
$piece_size = ($inner_size / 4) * 0.95;
$piece_length = $piece_size*3 / sqrt(3);


module nib() {
  translate([-(($size/2)-3.5),0,0]) {
   # linear_extrude(1.5) {
      square([3,4], true);
    }
  }
}

module divet() {
  translate([-($piece_size) / ($size/20),0,3]) {  
    sphere(2, $fn=10);
  }
}

module divet_row() {
  for(i=[-1.5,-0.5, 0.5, 1.5]) {
    translate([-($inner_size/2)+1.5,$piece_length * i, 0]) {
      divet();
    }
  }
}


module base() {
  cylinder(h = 3,
         r1 = $size - 5,
         r2 = $size - 5,
         $fn = 3);
}
    
difference() {
  base();
  
  translate([0,0,1]) {
    cylinder(h = 20,
             r1 = $inner_size,
             r2 = $inner_size,
             $fn = 3);
  }
  
  for(i=[0,120,240]) {
    rotate([0,0,i]) {
        divet_row();
        nib();
    }
  }
  

} 



