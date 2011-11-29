// Rook 3D Printer 
// Extruder
// Created By Jeffrey Olijar 
// Jolijar@gmail.com
// Revision 1.00
// 1 x required 

include <Rook_Config.scad>

module Rook_Extruder(){


	difference(){
		union(){
translate(v=[40,-26.5,-15]){
cube(size =[34,22,12], center = true);
}

translate(v=[43.6,24,-5.5]){
cube(size =[52.4,25,31], center = true);
}




	   	            }

		union(){
translate(v=[36.25,0,18]){
cube(size =[333,600,16], center = true);
}


translate(v=[35,11,0]){
rotate(a=[90,0,0]){
translate(v=[5,0,0]){
			
translate(v=[0,0,-25.5]){
			cylinder(h=5,r=11.75, center = true);
}
			cylinder(h=500,r=7.25, center = true);
translate(v=[0,10,-12.5]){
cylinder(h=9,r=Bearing_OD/2, center = true);
}
rotate(a=[90,0,0]){
translate(v=[9.5,-20,0]){
cylinder(h=500,r=M4/2+0.5, center = true);
}
translate(v=[-10,-20,0]){
cylinder(h=500,r=M4/2+0.5, center = true);
}
translate(v=[9.5,-5,0]){
cylinder(h=500,r=M4/2+0.5, center = true);
}
translate(v=[-10,-5,0]){
cylinder(h=500,r=M4/2+0.5, center = true);
}

translate(v=[9.5,-20,35]){
cylinder(h=50,r=7.5/2+0.5, $fn=6, center = true);
}
translate(v=[-10,-20,35]){
cylinder(h=50,r=7.5/2+0.5, $fn=6,  center = true);
}
translate(v=[9.5,-5,35]){
cylinder(h=50,r=7.5/2+0.5, $fn=6,  center = true);
}
translate(v=[-10,-5,35]){
cylinder(h=50,r=7.5/2+0.5, $fn=6,  center = true);
}


}










translate(v=[0,0,50]){
rotate(a=[90,0,0]){
translate(v=[9.5,-20,0]){
cylinder(h=500,r=M4/2+0.5, center = true);
}
translate(v=[-10,-20,0]){
cylinder(h=500,r=M4/2+0.5, center = true);
}
translate(v=[9.5,-5,0]){
cylinder(h=500,r=M4/2+0.5, center = true);
}
translate(v=[-10,-5,0]){
cylinder(h=500,r=M4/2+0.5, center = true);
}
}
}



translate(v=[0,-15,40]){
rotate(a=[0,0,90]){
cylinder(h=50,r=M8/2, center = true);

translate(v=[0,0,-2.5]){
cylinder(h=Bearing_H+1.75 ,r=Bearing_OD/2+1.5, center = true);
}

}
}









rotate(a=[0,90,0]){
translate(v=[0,1,7]){
translate(v=[12.5,5,0]){
cylinder(h=500,r=3.25/2, center = true);
translate(v=[0,30,16]){
cube(size =[GVO,60,6], center = true);
}
translate(v=[0,30,25]){
cube(size =[GVI,60,16], center = true);
}

translate(v=[0,0,16]){
cylinder(h=6,r=GVO/2, center = true);
translate(v=[0,0,7]){
cylinder(h=20,r=GVI/2, center = true);
}
}
}
}
}
translate(v=[15.5,15.5,0]){
cylinder(h=500,r=M4/2, center = true);
}
translate(v=[15.5,-15.5,-10]){
cylinder(h=50,r=M4/2, center = true);
}
translate(v=[-15.5,15.5,-10]){
cylinder(h=50,r=M4/2, center = true);
}
translate(v=[-15.5,-15.5,-10]){
cylinder(h=50,r=M4/2, center = true);
}
translate(v=[-18,0,0]){
cylinder(h=500,r=M4/2, center = true);
}
translate(v=[18,0,0]){
cylinder(h=500,r=M4/2, center = true);
}



translate(v=[-18,0,-47]){
cylinder(h=50,r=N3/2, $fn=6,  center = true);
}
translate(v=[18,0,-47]){
cylinder(h=50,r=N3/2, $fn=6,  center = true);
}










}
translate(v=[-21.5,4,0]){
cylinder(h=500,r=M4/2, center = true);
}
translate(v=[-21.5,-15,0]){
cylinder(h=500,r=M4/2, center = true);
}
			}
}
		 	  translate(v=[0,-10,0]){
							cube(size = [M8,LBD,45], center = true);
						         }
			  cylinder(h=45,r=LBD/2, center = true);
			  }
		    	}
			}

Rook_Extruder();
