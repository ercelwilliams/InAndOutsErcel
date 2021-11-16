/*
Reads values from serial port, written to the port by Arduino.
 The size of an ellipse changes according to the serial values.
 Must assign the correct port, see instructions below!
 */

import processing.serial.*; //imports Serial library from Processing

Serial myPort; // creates object from Serial class
int val=0; // creates variable for data coming from serial port


void setup() {
  size(400, 400);
  /*
   IMPORTANT: We must tell Processing which port to read from.
   Run the sketch and check your console to see the results of printArray(Serial.list());
   and that is how you know the port to use.
   On my Mac, it is port 1 and so I open Serial.list()[1].
   */

  printArray(Serial.list()); // this line prints the port list to the console
  String portName = Serial.list()[2]; //change the number in the [] for the port you need
  myPort = new Serial(this, portName, 9600);
}

void draw() {
  if ( myPort.available() > 0) { // If data is available,
    val = myPort.read(); // read it and store it in val
  }

  //draws an ellipse that grows and shrinks in relation to val
  background(255);
  fill (0);
  ellipse (width/2, height/2, val, val);
  println (val); //prints to Processing console
  
  if (val>60){
     fill(255,88,291);
     ellipse (width/2, height/2, val, val);
  }
  if (val>90){
    fill(88,97,90);
    ellipse (width/2, height/2, val, val);
    
  }
  if (val>120){
    fill(176,90,90);
    ellipse (width/2, height/2, val, val);
  }
  if (val>150){
    fill(87,199,76);
    ellipse (width/2, height/2, val, val);
  }
  if (val >180){
    fill(7,252,6);
    ellipse (width/2, height/2, val, val);
  }
  
}
