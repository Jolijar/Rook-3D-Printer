// Rook 3D Printer 
// Z Bearing
// Created By Jeffrey Olijar 
// Jolijar@gmail.com
// Revision 1.00
// 2 x requred 


include <Rook_Config.scad>

module Rook_Z_Bearing(){

difference(){ 
union(){
// Misumi Rail Box
translate(v=[0,0,0]){ cube(size = [30,25,25], center = true);}


translate(v=[0,-23.5,-7.5]){ cube(size = [30,23,10], center = true);}
translate(v=[0,-35,-12.5]){cylinder(h = 10, r=15);}

}

union(){
// Misumi Rail Cutout
translate(v=[0,2.5,0]){ cube(size = [20.5,20.5,26], center = true);}
translate(v=[-20,3,0])rotate(a=[0,90,0]){cylinder(h=100,r=M5/2);}

translate(v=[0,-35,-25]){cylinder(h = 100, r=Bearing_ID);}
translate(v=[0,-35,-8]){ cylinder(h = Bearing_H, r=Bearing_OD/2);}

}}}
Rook_Z_Bearing();