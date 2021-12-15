import processing.serial.*; 

Serial myPort; 
int portVal=0; 

int val = 0; //photocell
int valb = 0;//potentiometer

float r =80; //floats for rectangles
float ra = 0;
float rb = 400;
float rc = 300;

float c = 100;
float cb =40;
float cc =40;

float x = 699; 
float y = 10;

void setup() {
  size(700, 700);
  
  printArray(Serial.list()); 
  String portName = Serial.list()[2]; 
  myPort = new Serial(this, portName, 9600);
}

void draw() {
  if ( myPort.available() > 0) { 
    portVal = myPort.read(); 
  }
  
 if (portVal > 0 && portVal <= 80){
    val = portVal; //photocell
 }
 
 if (portVal > 81 && portVal <= 255){
    valb = portVal; //potentiometer
 }
 
 
 background(val,20,val);//changes backgroud color
 //val-photocell 
 rect(x,ra,r,300);
 rect(x,rb,r,rb);
 fill(255, 255, 255);
 
 ellipse(c,valb,cb,cc);//player 
 //val b-controlling the y-axis
 x--;
 if (x<=y){
   x=699;
 //the obstacles/rectangles move negative along the x axis. player 
 }
 
 
 //if (valb==x||valb==y){
 //  gameover();
   
 //}
// if(c+valb+cc+cb)

 
  
println (portVal); 
println("portVal: " + portVal);
println("val: " + val);
println("valb: " + valb);
}

//void gameover(){
  //text("GameOver",height/2,width/2);
//}
