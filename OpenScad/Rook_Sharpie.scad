// Rook 3D Printer 
// Sharpie Holder
// Created By Jeffrey Olijar 
// Jolijar@gmail.com
// Revision 1.00


include <Rook_Config.scad> 



module Rook_Sharpie(){




rotate(a=[0,90,0]){

difference(){ 

union(){
rotate(a=[0,90,0])translate(v=[-9,0,0]){ 
cylinder(h=45,r=17/2, center = true);
}
translate(v=[0,0,0]){ 
cube(size = [45,15,10], center = true);
}
}

union(){

translate(v=[0,0,20]){ 
cube(size = [46,6,15], center = true);
}
rotate(a=[0,0,0])translate(v=[18,0,0]){ 
cylinder(h=100,r=M4/2, center = true);
}
rotate(a=[0,0,0])translate(v=[-18,0,0]){ 
cylinder(h=100,r=M4/2, center = true);
}
rotate(a=[0,0,0])translate(v=[18,0,1.5]){ 
cylinder(h=5,r=7/2, center = true);
}
rotate(a=[0,0,0])translate(v=[-18,0,1.5]){ 
cylinder(h=5,r=7/2, center = true);
}

rotate(a=[0,90,0])translate(v=[-9,0,0]){ 
cylinder(h=125,r=12/2, center = true);
}




}}

}


}




Rook_Sharpie();