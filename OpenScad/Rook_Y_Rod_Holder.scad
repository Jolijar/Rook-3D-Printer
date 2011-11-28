// Rook 3D Printer 
// Y Rod Holder
// Created By Jeffrey Olijar 
// Jolijar@gmail.com
// Revision 1.00
// 4 x required 

include <Rook_Config.scad> 


module Rook_Y_Rod_Holder(){





difference(){ 
union(){

	translate (v=[0,0,0]){ 
		cube(size =[40,20,5], center = true); 
translate (v=[0,0,4]){
cube(size =[16,20,12], center = true); 
}
		}
	}
union(){


translate(v=[0,0,3]){
	cylinder(h=25,r=M8/2, center = true);
}
	
	
translate(v=[14,0,3]){
		cylinder(h=25,r=M5/2, center = true);
}
translate(v=[-14,0,3]){
		cylinder(h=25,r=M5/2, center = true);
}
	
}}}




















Rook_Y_Rod_Holder();