import processing.serial.*;

Serial myPort;
int val=0;
int valb=0;
float x = 50;
String state ="pregame";




void setup() {
  size(700, 700);
 
  printArray(Serial.list());
  String portName = Serial.list()[2];
  myPort = new Serial(this, portName, 9600);
}



void draw(){
  if (state =="pregame"){
      pregame();
  }
    else if (state =="game"){
      game();
  }  else if (state =="gameover"){
      gameover();
  }
  
   println(state);
}
  


void pregame(){
  textSize(50);
  text("Press The Button To Start",30,width/2);
  
    if ( myPort.available() > 0) {
    valb = myPort.read();
  }
  
  if(valb>=100){
    state = "game";
  }
  
}



void game() {
  if ( myPort.available() > 0) {
    val = myPort.read();
  }
  
  background(40, 40, 40);
 rect(375,0,80,300);
 rect(375,400,80,400);
 fill(255, 255, 255);
 ellipse(height/2,+val,40,40);
 x++;
  if (x > height) {
    x = 0;
  }


  //  if ( myPort.available() > 0) {
    //valb = myPort.read();
  //}
  //background(0);
  //fill(0,255,0);
}

void gameover(){
}
