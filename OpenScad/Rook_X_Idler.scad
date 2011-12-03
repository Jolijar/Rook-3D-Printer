// Rook 3D Printer 
// X Idler
// Created By Jeffrey Olijar 
// Jolijar@gmail.com
// Revision 1.03
// 1 x required 

include <Rook_Config.scad> 


module Rook_X_Idler(){







translate(v=[0,30,8+LH]){ 
cube(size = [LBD+4,20,LH], center = true);
}
translate(v=[0,30,10]){ 
difference(){ 
union(){
cube(size = [LBD+4,20,4], center = true);
}
union(){
translate(v=[0,0,0]){ 
cylinder(h=42,r=M8/2+0.5, center = true);
}
}
}
}







difference(){ 
union(){


translate(v=[0,21,0]){ 
cube(size = [LBD+8,40,42], center = true);
}
translate(v=[LBD/2+1,46,-7]){ 
cube(size = [6,24,28], center = true);
}
	
	cylinder(h=42,r=LBD/2+4, center = true);

}
union(){
translate(v=[0,-M8,0]){ 
cube(size = [M8,20,42], center = true);
}

rotate(a=[0,90,0])translate(v=[0,63,0]){ 
translate(v=[2,-13.5,0]){ 
cylinder(h=43,r=M8/2, center = true);
}
translate(v=[10,-48,-20]){
cylinder(h=50,r=M4/2);
}
translate(v=[-10,-48,-20]){
cylinder(h=50,r=M4/2);
}
translate(v=[10,-48,-32]){
cylinder(h=50,r=N4/2,$fn=6, center = true);
}
translate(v=[-10,-48,-32]){
cylinder(h=50,r=N4/2,$fn=6, center = true);
}
}







//x rod cutout
translate(v=[20,15,0]){ 
cube(size = [20,25.25,42], center = true);
}
// radius
rotate(a=[0,-90,0])translate(v=[-13,50.5,-10]){ 

difference(){ 
union(){


cube(size = [16,16,20], center = true);
}

union(){
cylinder(h=43,r=8, center = true);
translate(v=[0,-8,0]){ 
cube(size = [16,16,20], center = true);
}
translate(v=[8,0,0]){ 
cube(size = [16,16,20], center = true);
}
}
}
}
// radius
rotate(a=[0,90,0])translate(v=[0.5,50.5,10]){ 

difference(){ 
union(){


cube(size = [16,16,20], center = true);
}

union(){
cylinder(h=43,r=8, center = true);
translate(v=[0,-8,0]){ 
cube(size = [16,16,20], center = true);
}
translate(v=[8,0,0]){ 
cube(size = [16,16,20], center = true);
}
}
}
}

// LM8UU Entry Cone
translate(v=[0,0,20]){ 
cylinder(h=5,r1=LBD/2+0.25, r2=LBD/2+1.5, center = true);
}


	cylinder(h=43,r=LBD/2+0.25, center = true);
translate(v=[0,30,0]){ 
		cylinder(h=43,r=N8/2,$fn=6, center = true);
}


}

}






}











Rook_X_Idler();