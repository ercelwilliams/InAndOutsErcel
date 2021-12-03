import processing.serial.*;

Serial myPort;
int serialVal = 0; 
float x = 50;
void setup() {
  printArray(Serial.list());
  myPort = new Serial(this, Serial.list()[2], 9600);
  size(1000,1000);
  background(40,40,40);
  frameRate(10);

}

void draw() { 
 background(40, 40, 40);
 fill(255, 255, 255);
 ellipse(x,serialVal,80,80);
 x++;
  if (x > height) {
    x = 0;
  }
}

String buf="";
int cr = 13;
int lf = 10; 

void serialEvent(Serial p) {
  int c = myPort.read();
  if (c != lf && c != cr) {

    buf += char(c);
  }
  if (c == lf) {
  
    serialVal = int(buf);

    println("val="+serialVal); 
    buf = ""; 
  }
}
