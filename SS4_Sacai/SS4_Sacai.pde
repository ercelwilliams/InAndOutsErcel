//Click images using mouse to have the image change.
//text moves on timed event. Canvas goes blank after time event. 

PFont font;
PImage sacai;
PImage sacaib;
int time1 =10000;
int time2 =1000;
int x =0;


void setup() {
  size(700,700);
  background(255);
  imageMode(CENTER);
  sacai = loadImage("sacai.jpg");
  sacaib = loadImage("sacaiB.jpg");
  
 font = createFont("Roboto-Black.ttf",28);

}

void draw() {
int currentTime = millis();
  background(255);
textFont(font);
fill(0);
text("Nike x Sacai x Fragment Waffle", x, 100);

if (mousePressed){
  image(sacaib, width/2, height/2, sacai.width/2.7,sacai.height/3);
  }
  else {
  image (sacai, width/2, height/2, sacai.width/3,sacai.height/3);
  }


if (currentTime>time2){
  x+=1;
}
if (currentTime>time1){
  background(255);
}



}
