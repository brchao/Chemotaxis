 //declare bacteria variables here  

 Bacteria bob; 
 void setup()   
 {     
 	//initialize bacteria variables here   
 	size(800,800);
 	bob = new Bacteria(mouseX,mouseY);
 }   
 void draw()   
 {    
 	//move and show the bacteria
 	background(0);
 	fill(0,0,255);
 	noStroke();
 	ellipse(mouseX,mouseY,20,20);
 	new Bacteria(mouseX,mouseY);
 	bob.show(); 
 	bob.move();
 	if(get(mouseX,mouseY) == color(255,255,0)){
 		background(255,0,0);
 	}
 }  
 class Bacteria    
 {     
 	//lots of java!   
 	int myColor, myX, myY;
 	Bacteria(int x, int y){
 		myColor = color(255,255,0);
 		myX = x;
 		myY = y;
 	}	

 	void move(){
    if(myX > mouseX)
    	myX = myX + (int)(Math.random()*8)-5;
 	else
 		myX = myX + (int)(Math.random()*8)-2;
 	if(myY > mouseY)
    	myY = myY + (int)(Math.random()*8)-5;
 	else
 		myY = myY + (int)(Math.random()*8)-2;
    }

 	void show(){
 		fill(myColor);
 		ellipse(myX,myY,50,50);
 	}
 }    