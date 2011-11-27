// Rook 3D Printer 
// Z Motor Holder
// Created By Jeffrey Olijar 
// Jolijar@gmail.com
// Revision 1.00
// 2 x requred 

include <Rook_Config.scad>

module Rook_Z_Motor(){



//Fillets
	difference(){
		union(){
			rotate(a=[-90,0,0])translate(v=[-20,-30,31]){	
	difference(){
		cube(size = [10,10,5]);
		cylinder(r=10, h=25, center=true);
		}}
		rotate(a=[-90,0,180])translate(v=[-20,-30,-36]){	
	difference(){
			cube(size = [10,10,5]);
			cylinder(r=10, h=25, center=true);
			}}






			cube(size = [56,72,5], center = true);
			translate(v=[0,33.5,20]){			
				cube(size = [20,5,40], center = true);
				}
			translate(v=[0,33.5,10]){			
				cube(size = [56,5,20], center = true);
				}
			translate(v=[25.5,0,10]){			
				cube(size = [5,72,20], center = true);
				}
			translate(v=[-25.5,0,10]){			
				cube(size = [5,72,20], center = true);
				}
			}


		union(){


difference(){
		union(){
			rotate(a=[0,180,90])translate(v=[26.5,18.5,-10]){	
	difference(){
		cube(size = [10,10,25]);
		cylinder(r=10, h=25, center=true);
		}}}}
difference(){
		union(){
			rotate(a=[0,0,90])translate(v=[26.5,18.5,-5]){	
	difference(){
		cube(size = [10,10,25]);
		cylinder(r=10, h=55, center=true);
		}}}}

rotate(a=[0,180,0])translate(v=[0,0,0]){
difference(){
		union(){
			rotate(a=[0,180,90])translate(v=[26.5,18.5,-10]){	
	difference(){
		cube(size = [10,10,35]);

		cylinder(r=10, h=55, center=true);
		}}}}

difference(){
		union(){
			rotate(a=[0,0,90])translate(v=[26.5,18.5,-25]){	
	difference(){
		cube(size = [10,10,55]);
		cylinder(r=10, h=55, center=true);
		}}}}}






translate(v=[0,-18,35])rotate(a=[15,0,0]){
	cube(size = [58,87,50], center = true);
}
			translate(v=[0,40,12])rotate(a=[90,0,0]){
				cylinder(h=20,r= M5/2);
				translate(v=[0,20,0]){
					cylinder(h=20,r= M5/2);
				}
			}
			translate(v=[0,20,-10]){
				cylinder(h=20,r=M8/2);
			}
			translate(v=[0,-10,-10]){
				cylinder(h=20,r=12);
				translate(v=[15.5,15.5,0]){
					cylinder(h=20,r=	M4/2);
				}
				translate(v=[15.5,-15.5,0]){
					cylinder(h=20,r=M4/2);
				}
				translate(v=[-15.5,15.5,0]){
					cylinder(h=20,r=M4/2);
				}
				translate(v=[-15.5,-15.5,0]){
					cylinder(h=20,r=M4/2);
				}
			}
		}
	}	
}
Rook_Z_Motor();
