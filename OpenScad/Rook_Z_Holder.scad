// Rook 3D Printer 
// Z Rod Holder
// Created By Jeffrey Olijar 
// Jolijar@gmail.com
// Thingiverse Link
// Revision 1.00
// 2 x requred 

include <Rook_Config.scad>

module Rook_Z_Holder(){


difference(){


	union(){
translate(v=[0,44,5]){
					cube(size = [60,5,20], center = true);
}
		translate(v=[7,27,0]){
			cylinder(h = 16, r=3);
				translate(v=[-7,0.15,10]){
					cube(size = [14,6,15], center = true);
					}
				translate(v=[-14,0,0]){
					cylinder(h = 16, r=3);
				}}
			translate(v=[0,35.25,12.5]){
				cube(size = [20,16.5,15], center = true);
				}
			translate(v=[0,43.5,27.35]){
				//cube(size = [14,6,5], center = true);
				}
			
			translate(v=[0,19+Bearing_ID,0]){
				cube(size = [20,39,10], center = true);
				}
			translate(v=[0,43.5,27/2]){
				cube(size = [20,6,27], center = true);
				}
			translate(v=[0,0,-5]){
				cylinder(h = Bearing_H*2, r=(Bearing_OD/2)+2);
			}}


	union(){
		translate(v=[20,50,5])rotate(a=[90,0,0]){
			cylinder(h=200,r=M5/2);
				translate(v=[-40,0,0]){
					cylinder(h=200,r=M5/2);
			}}
		rotate(a=[0,0,0]){
			translate(v=[0,36,22.5])cube(size = [25,28,15], center = true);
			}
		translate(v=[0,0,-5]){
			cylinder(h = Bearing_H*2, r=Bearing_ID);
			}
		translate(v=[0,0,Bearing_H-2]){
			cylinder(h = Bearing_H, r=Bearing_OD/2);
			}
		translate(v=[0,30,-10]){
			cylinder(h=80,r=M8/2);
}}}}
Rook_Z_Holder();