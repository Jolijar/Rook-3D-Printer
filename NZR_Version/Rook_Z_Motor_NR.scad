// Rook 3D Printer 
// Z Motor Holder
// Created By Jeffrey Olijar 
// Jolijar@gmail.com
// Revision 1.00
// 2 x requred 


include <Rook_Config.scad>

module Rook_Z_Motor(){

difference(){ 
union(){
// Misumi Rail Box
translate(v=[0,0,0]){ cube(size = [30,25,25], center = true);}

// Stepper Motor Holder
translate(v=[0,-34.5,-9.5]){ cube(size = [42,44,6], center = true);}
translate(v=[23.5,-34.5,0]){ cube(size = [5,44,25], center = true);}
translate(v=[-23.5,-34.5,0]){ cube(size = [5,44,25], center = true);}
translate(v=[0,-10,0]){ cube(size = [52,5,25], center = true);}
}

union(){
// Misumi Rail Cutout
translate(v=[0,2.5,0]){ cube(size = [20.5,20.5,26], center = true);}
translate(v=[-20,3,0])rotate(a=[0,90,0]){cylinder(h=100,r=M5/2);}
// Stepper Motor Holes
translate(v=[0,-25,-15]){
	translate(v=[0,-10,-10]){cylinder(h=20,r=12);
	translate(v=[15.5,15.5,0]){cylinder(h=20,r= M3/2);}
	translate(v=[15.5,-15.5,0]){cylinder(h=20,r=M3/2);}
	translate(v=[-15.5,15.5,0]){cylinder(h=20,r=M3/2);}
	translate(v=[-15.5,-15.5,0]){cylinder(h=20,r=M3/2);}
	}
translate(v=[0,-18,44])rotate(a=[25,0,0]){ 
cube(size = [58,67,50], center = true);
}
}}}}
Rook_Z_Motor();