// Rook 3D Printer 
// X Carriage Holder
// Created By Jeffrey Olijar 
// Jolijar@gmail.com
// Revision 1.01
// 1 x required 

include <Rook_Config.scad> 

module Rook_X_Carriage_Holder(){



rotate(a=[180,0,0]){

difference(){ 

union(){

	translate (v=[DBCX/2,LBD/2,0]){ 
		cube(size =[DBCX,5,25], center = true); 
		}


translate (v=[DBCX/2+8,-2,4.5]){ 
		cube(size =[10,15,16], center = true); 
		}

	translate (v=[DBCX/2,-LBD/2,0]){ 
		cube(size =[DBCX,5,25], center = true); 
		}
translate (v=[0,0.5,0]){
	cylinder(h=25,r=LBD/2+3, center = true);
}
	translate (v=[DBCX,0.5,0]){ 
		cylinder(h=25,r=LBD/2+3, center = true);
}}
union(){
translate (v=[DBCX/2+8,-9,6.25]){ 
		cube(size =[5,10,12.5], center = true); 
		}
translate (v=[DBCX/2+8,9,6.25]){ 
		cube(size =[5,10,12.5], center = true); 
		}





rotate(a=[90,90,0])translate(v=[0,43,0]){ 

translate(v=[8,0,-DBCX/4]){
cylinder(h=DBCX/2,r=M3/2);
}
translate(v=[-8,0,-DBCX/4]){
cylinder(h=DBCX/2,r=M4/2);
}}





rotate(a=[90,0,0])translate(v=[DBCX/2,0,0]){ 

translate(v=[18,0,-20]){
cylinder(h=50,r=M4/2);
}
translate(v=[-18,0,-20]){
cylinder(h=50,r=M4/2);
}}
translate(v=[0,0.5,0]){
	cylinder(h=25,r=LBD/2, center = true);
}
	translate (v=[0,LBD/2,0]){ 
		cube(size =[M8,M8,25], center = true); 
	translate (v=[DBCX,-LBD/2,0]){ 
translate(v=[0,0.5,0]){
		cylinder(h=25,r=LBD/2, center = true);
}
	translate (v=[0,LBD/2,0]){ 
		cube(size =[M8,M8,25], center = true); 
}}}}}}







}












Rook_X_Carriage_Holder();