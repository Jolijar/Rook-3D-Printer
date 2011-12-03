// Rook 3D Printer 
// X Rod Holder
// Created By Jeffrey Olijar 
// Jolijar@gmail.com
// Revision 1.01
// 2 x required 

include <Rook_Config.scad> 


module Rook_X_Rod_Holder(){





difference(){ 
union(){

	translate (v=[DBCX/2,-M8/2+1.5,0]){ 
		cube(size =[DBCX,8,25], center = true); 
		}
	cylinder(h=25,r=M8/2+2.5, center = true);
	translate (v=[DBCX,0,0]){ 
		cylinder(h=25,r=M8/2+2.5, center = true);
}}
union(){

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