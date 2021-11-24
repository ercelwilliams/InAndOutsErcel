int val=0; //to send over Serial
int x = 20;
int y = 20;

import processing.serial.*;  //import Serial library

Serial myPort;  // create object from Serial class

void setup() {
  size(700, 700); 
  textSize (44);
  textAlign (CENTER, CENTER);

  //set up Serial communication
  printArray(Serial.list()); // prints port list to the console
  String portName = Serial.list()[2]; //change to match your port
  myPort = new Serial(this, portName, 9600); //initialize Serial communication at 9600 baud
}

void draw() {
  background (key, key, key/2);
  fill (255);
  text ("PRESS '1'", width/2, 50);
  ellipse(width/2,height/2,500,500);
  fill (255,0,0);
  ellipse(width/2.5,height/2.5,100,100);
  ellipse(width/1.5,height/2.5,100,100);
  fill(34);
  rect(width/3.25,height/1.75,300,30);



  if (keyPressed){
    
     fill(255,0,0);
  rect(width/3.25,height/1.75,300,30);
 // val=100;
    println(val);
    }
    else{
      int val=0;
    }
}
  //  val= int (map (key, 0, width, 0, 23)); //remaps mouseY to 0-255  
    //myPort.write(val); //write to Serial
    //fill(255,0,0);
  //rect(width/3.25,height/1.75,300,30);
    //println(val);  //print to console
