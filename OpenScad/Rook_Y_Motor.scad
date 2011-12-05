// Rook 3D Printer 
// Y Motor Holder
// Created By Jeffrey Olijar 
// Jolijar@gmail.com
// Revision 1.01
// 1 x required 

include <Rook_Config.scad> 


module Rook_Y_Motor(){

difference(){ 
	union(){
	//Support Structure
		translate(v=[23.5,4.5,17.5]){ 
			cube(size = [3,49,43], center = true);
		}
	// Rail Mount
		translate(v=[15,30.5,17.5]){ 
			cube(size = [20,5,43], center = true);
		}
	// Stepper Motor Mount
		translate(v=[0,4,0]){ 
			cube(size = [44,48,8], center = true);
		}
	}
	union(){
	// Stepper Motor Holes
		rotate(a=[0,0,0])translate(v=[0,0,-10]){ 
			cylinder(h=43,r=12.5, center = true);
			translate(v=[15.5,15.5,0]){ 
				cylinder(h=20,r= M4/2);
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
	// Rail Mount Holes
		rotate(a=[90,0,0])translate(v=[15,3,-40]){ 
			translate(v=[0,7,0]){ 
				cylinder(h=100,r= M5/2);
				}
			translate(v=[0,27,0]){ 
				cylinder(h=100,r= M5/2);
				}
			}
	// Support Cutaway
		rotate(a=[40,0,0])translate(v=[23.5,14,40.5]){ 
			cube(size = [3,74,50], center = true);
			}
		}
	}

Rook_Y_Motor();