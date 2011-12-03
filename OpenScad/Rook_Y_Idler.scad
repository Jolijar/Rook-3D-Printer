// Rook 3D Printer 
// Rook_Y_Idler
// Created By Jeffrey Olijar 
// Jolijar@gmail.com
// Revision 1.01
// 1 x required 

include <Rook_Config.scad> 


module Rook_Y_Idler(){
rotate(a=[90,0,0]){
difference(){ 
union(){
translate (v=[0,-27.5,0]){ 
		cube(size =[20,5,40], center = true); 
}


rotate(a=[0,0,30])translate (v=[-16,0,0]){
difference(){ 
union(){
	cylinder(h=8,r=10, center = true);
	translate (v=[0,-15,0]){ 
		cube(size =[20,30,8], center = true); 

}}
union(){
translate(v=[0,0,0]){
	cylinder(h=100,r=M8/2, center = true);
rotate(a=[0,0,-30])
translate (v=[12,-32,0]){ 
		cube(size =[30,20,40], center = true); 



}
}
}




}
}



}






union(){
rotate(a=[90,0,0])translate(v=[0,12,0]){
	cylinder(h=100,r=M5/2, center = true);
}
rotate(a=[90,0,0])translate(v=[0,-12,0]){
	cylinder(h=100,r=M5/2, center = true);
}


}}


}}

Rook_Y_Idler();