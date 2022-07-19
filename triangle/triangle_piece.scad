$size = 70;
$height = 3;
$inner_size = $size - 15;
$piece_size = ($inner_size / 4) * 0.95;


module divet() {
  translate([-($piece_size) / 3.5,0,$height]) {  
    #sphere(2, $fn=10);
  }
  
  //translate([-($piece_size) / 3.5,0,0]) {  
    //sphere(2.2, $fn=10);
  //}
}
  
module piece() {

  difference() {
    cylinder(h = $height,
           r1 = $piece_size,
           r2 = $piece_size,
           $fn = 3);
  
      
    divet();
    rotate([0,0,-120]) {
      divet();
    }
      
    rotate([0,0,120]) {
      divet();
    }
    
    
  }  
}


piece();