// Parameters for customizing the tower
$tower_height = 80;
$tower_diameter = 14;
// 'start', 'buffer', or 'finish'
$message = "Buffer";
$byline = "LoudounCodes.org";


difference() {
  // create the base
  minkowski() {
    cylinder(r=55, h=1, $fn=60);
    sphere(2, $fn=15);
  }
  
  // emboss the text
  translate([-0,24,0]) {
    linear_extrude(8) {
      #text($message,
           size=12,
           halign="center");
    }
  }
 
  translate([0,-20,0]) {
    linear_extrude(8) {
      #text($byline,
           size = 8,
           halign="center");
    }
  }
}
  
// create the tower
cylinder(r = $tower_diameter/2,
         $tower_height,
         $fn=60);
translate([0,0,$tower_height]) {
  sphere($tower_diameter/2, $fn = 30);
}

if ($message == "Start")
  translate([2,22,-1]) #cube([0.5,10,1]);

if ($message == "Buffer")
  translate([7,30,-1]) #cube([10,0.5,1]);

//translate([-50,-16.5,-1]) #cube([100,0.5,1]);