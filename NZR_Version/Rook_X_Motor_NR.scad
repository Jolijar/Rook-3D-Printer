// Rook 3D Printer 
// X Motor Holder
// Created By Jeffrey Olijar 
// Jolijar@gmail.com
// Revision 1.00
// 1 x requred 


include <Rook_Config.scad>

module Rook_X_Motor(){




// Slider Part 
translate(v=[0,-6,0]){ cube(size = [5.5,5,42], center = true);}
translate(v=[0,11,0]){ cube(size = [5.5,5,42], center = true);}
translate(v=[2.5,2.5,0])rotate(a=[0,0,90]){ 
//translate(v=[0,-6,0]){ cube(size = [5.5,5,42], center = true);}
//translate(v=[0,11,0]){ cube(size = [5.5,5,42], center = true);}
}
difference(){ 
union(){
translate(v=[7,-40,0]){ 
cube(size = [17,20,42], center = true);
}
translate(v=[12.5,-71.5,0]){ 
cube(size = [6,44,42], center = true);
}




// Misumi Rail Box
translate(v=[0,2,0]){ cube(size = [30,30,42], center = true);}


translate(v=[0,-23.5,0]){ cube(size = [30,23,42], center = true);}
translate(v=[0,-35,-21]){cylinder(h = 42, r=15);}

}

union(){


rotate(a=[0,90,0])translate(v=[0,-71.5,0]){ 
cylinder(h=43,r=12.5, center = true);
translate(v=[15.5,15.5,0]){ 
cylinder(h=20,r= M3/2);
}
translate(v=[15.5,-15.5,0]){
cylinder(h=20,r=M3/2);
}
translate(v=[-15.5,15.5,0]){
cylinder(h=20,r=M3/2);
}
translate(v=[-15.5,-15.5,0]){
cylinder(h=20,r=M3/2);
}

}
rotate(a=[0,90,0])translate(v=[0,40,0]){ 
translate(v=[10,-60,-20]){ cylinder(h=50,r=M4/2);}
translate(v=[-10,-60,-20]){cylinder(h=50,r=M4/2);}
translate(v=[10,-60,-32]){cylinder(h=50,r=N4/2,$fn=6, center = true);}
translate(v=[-10,-60,-32]){cylinder(h=50,r=N4/2,$fn=6, center = true);}
translate(v=[0,-60,16]){cube(size = [43,25,5], center = true);}
}
// Misumi Rail Cutout
translate(v=[0,2.5,0]){ cube(size = [20.5,20.5,43], center = true);}
//translate(v=[-20,3,0])rotate(a=[0,90,0]){cylinder(h=100,r=M5/2);}

//translate(v=[0,-35,-25]){cylinder(h = 100, r=Bearing_ID);}
translate(v=[0,-35,0]){cylinder(h=43,r=N8/2,$fn=6, center = true);}

}}




translate(v=[0,-25,0]){ 

translate(v=[0,-12,-12-LH]){ 
cube(size = [20,16,LH], center = true);
}

difference(){ 
union(){

translate(v=[0,-11,-10]){ 
cube(size = [20,16,5], center = true);
}
}
union(){
translate(v=[0,-10,0]){ 
cylinder(h=50,r=M8/2+0.75, center = true);
}
}
}
}


}
Rook_X_Motor();