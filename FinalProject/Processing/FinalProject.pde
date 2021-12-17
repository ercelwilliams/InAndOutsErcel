// Ercel Williams Final Project

// Player must use the potentiometer to avoid the obstacles
//if player comes in contact with obstacle, game over.

import processing.serial.*;


Serial myPort; 
int portVal=0; 

int val = 0; //photocell
int valb = 0;//potentiometer

float r =80; //floats for rectangles
float ra = 0;
float rb = 400;
float rc = 200;

float c = 100;
float cb =40;
float cc =40;

float x = 699; 
float y = 10;

String state = "pregame";

void setup() {
  size(700, 700);
  
  printArray(Serial.list()); 
  String portName = Serial.list()[2]; 
  myPort = new Serial(this, portName, 9600);
}

void draw() {
  
  if (state=="pregame") {
    pregame();
  } else if (state=="game") {
    game();
  } else if (state=="gameover") {
    gameover();
  }
  
  
  if ( myPort.available() > 0) { 
    portVal = myPort.read(); 
  }
  
 if (portVal > 0 && portVal <= 80){
    val = portVal; //photocell
 }
 
 if (portVal > 81 && portVal <= 255){
    valb = portVal; //potentiometer
 }
 if (state=="pregame") {
   portVal=valb;
}
}
void pregame(){
  textSize(30);
  text("Press buttton to start",width/2,height/2);
  if(val<=0){
    state="game";
  }


}

 void game(){
 background(val,20,val);//changes backgroud color
 //val-photocell 
 rect(x,ra,r,rc);
 rect(x,rb,r,rb);
 fill(255, 255, 255);
 
 ellipse(c,valb,cb,cc);//player 
 //val b-controlling the y-axis
 x--;
 if (x<=y){
   x=699;
 //the obstacles/rectangles move negative along the x axis. player 
 }
 

 //}
  
  
 if (c==ra){
   gameover();
   
 //}
// if(c+valb+cc+cb)

 }
  
println (portVal); 
println("portVal: " + portVal);
println("val: " + val);
println("valb: " + valb);
}

void gameover(){
  x=0;
  background(255);
  text("GameOver",height/2,width/2);
}
