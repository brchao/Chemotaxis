 //declare bacteria variables here  
int deaths = 0;
 Bacteria[] bob; 
 void setup()   
 {     
 	//initialize bacteria variables here   
 	size(800,800);
 	bob = new Bacteria[20];

 	for(int i = 0; i < bob.length; i++){
 		bob[i] = new Bacteria();
 	}   
 }
 void draw()   
 {    
 	//move and show the bacteria

 	background(0);
 	fill(0,0,255);
 	noStroke();
 	ellipse(mouseX,mouseY,20,20);

 	fill(255,255,0);
 	rect(0,0,50,800);
 	rect(0,0,800,50);
 	rect(0,750,800,50);
 	rect(750,0,50,800);
 	rect(187.5,200,50,600);
 	rect(375,0,50,600);
 	rect(750-187.5,200,50,600);
 	fill(0);
 	textSize(25);
 	text("Dead Time: " + deaths, 400,25);
 	fill(255,255,0);
 	for(int i = 0; i < bob.length; i++){
 		bob[i].show(); 
 		bob[i].move();
 	}
 	if(get(mouseX,mouseY) == color(255,255,0)){
 	
 		background(255,0,0);
 		deaths = deaths + 1;
 		textSize(45);
 		textAlign(CENTER,CENTER);
 		fill(0);
 		text("Dead Time: " + deaths, 400,400);
 	}
 }  
 class Bacteria    
 {     
 	//lots of java!   
 	int myColor, myX, myY;
 	Bacteria(){
 		myColor = color(255,255,0);
 		myX = 400;
 		myY = 400;
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
 		ellipse(myX,myY,30,30);
 		fill(255,0,0);
 		ellipse(myX-15,myY,15,15);
 		ellipse(myX+15,myY,15,15);
 	}
 }    