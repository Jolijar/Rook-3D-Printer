// Rook 3D Printer 
// Z Rod Holder
// Created By Jeffrey Olijar 
// Jolijar@gmail.com
// Revision 1.01
// 2 x requred 

include <Rook_Config.scad>

module Rook_Z_Holder(){

rotate(a=[0,90,0]){
difference(){


	union(){

	
			translate(v=[0,32.25,10]){
				cube(size = [20,20,10], center = true);
				}
		
			
			translate(v=[0,19+Bearing_ID,0]){
				cube(size = [20,39,10], center = true);
				}
			translate(v=[0,43.5,5]){
				cube(size = [20,6,60], center = true);
				}
			translate(v=[0,0,-5]){
				cylinder(h = Bearing_H*2, r=(Bearing_OD/2)+2);
			}}


	union(){
translate(v=[15,44,5]){
					cube(size = [10,500,120], center = true);
}
translate(v=[-15,44,5]){
					cube(size = [10,500,120], center = true);
}
		translate(v=[0,55,-15])rotate(a=[90,90,0]){
			cylinder(h=200,r=M5/2);
				translate(v=[-40,0,0]){
					cylinder(h=200,r=M5/2);
			}}
	
		translate(v=[0,0,-5]){
			cylinder(h = Bearing_H*2, r=Bearing_ID);
			}
		translate(v=[0,0,Bearing_H-2]){
			cylinder(h = Bearing_H, r=Bearing_OD/2);
			}
		translate(v=[0,30,-10]){
			cylinder(h=80,r=M8/2);
}}}}}
Rook_Z_Holder();