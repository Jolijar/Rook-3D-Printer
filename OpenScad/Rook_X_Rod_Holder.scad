// Rook 3D Printer 
// X Rod Holder
// Created By Jeffrey Olijar 
// Jolijar@gmail.com
// Revision 1.02
// 2 x required 

include <Rook_Config.scad> 


module Rook_X_Rod_Holder(){





difference(){ 
union(){

	translate (v=[DBCX/2,0,0]){ 
		cube(size =[DBCX,M8+5,25], center = true); 
		}
	cylinder(h=25,r=M8/2+2.5, center = true);
	translate (v=[DBCX,0,0]){ 
		cylinder(h=25,r=M8/2+2.5, center = true);
}}
union(){
translate (v=[DBCX/2,-6.5,0]){ 
		cube(size =[42,3,42], center = true); 
		}
rotate(a=[90,0,0])translate(v=[DBCX/2,0,0]){ 

translate(v=[10,0,-20]){
cylinder(h=50,r=M4/2);
}
translate(v=[-10,0,-20]){
cylinder(h=50,r=M4/2);
}}
translate(v=[0,0,0]){
	cylinder(h=25,r=M8/2, center = true);
}
	translate (v=[0,M8/2,0]){ 
		cube(size =[M8/2,M8,25], center = true);  // Cutout for Rod Holder
	translate (v=[DBCX,-M8/2,0]){ 
translate(v=[0,0,0]){
		cylinder(h=25,r=M8/2, center = true);
}
	translate (v=[0,M8/2,0]){ 
		cube(size =[M8/2,M8,25], center = true);  // Cutout for Rod Holder
}}}}}}




















Rook_X_Rod_Holder();