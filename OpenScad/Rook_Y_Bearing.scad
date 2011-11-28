// Rook 3D Printer 
// Rook Y Bearing
// Created By Jeffrey Olijar 
// Jolijar@gmail.com
// Revision 1.00
// 4 x required 

include <Rook_Config.scad> 


module Rook_Y_Bearing(){

difference(){ 
	union(){
		cylinder(h=LBH,r=LBD/2+3, center = true);
		translate (v=[0,LBD/2+1.5,0]){ 
			cube(size =[40,5,25], center = true); 
			}	
		}

	union(){
		cylinder(h=LBH,r=LBD/2, center = true);
		translate (v=[0,-LBD/2,0]){ 
			cube(size =[M8,M8,25], center = true); 
			}
		rotate(a=[90,0,0])translate(v=[15,0,0]){ 
			cylinder(h=50,r=M5/2, center = true);
			}
		rotate(a=[90,0,0])translate(v=[-15,0,0]){ 
			cylinder(h=50,r=M5/2, center = true);
			}

		}
	}
}

Rook_Y_Bearing();