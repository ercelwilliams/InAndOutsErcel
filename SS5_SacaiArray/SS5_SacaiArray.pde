PImage[] sacai= new PImage [6];

int whichSacai=0;
// click image to randomly selct a shoe
//bring mouse half to the screen to display text
//press any button to display the array number in console
void setup() {
  size(700, 700);  

  sacai[0]= loadImage ("sacai.jpg");
  sacai[1]= loadImage ("sacaiB.jpg");
  sacai[2]= loadImage ("sacaiC.jpg");
  sacai[3]= loadImage ("sacaiD.jpg");
  sacai[4]= loadImage ("sacaiE.jpg");
  sacai[5]= loadImage ("sacaiF.jpg");
}


void draw() {
  background(0);
  imageMode(CENTER);
  image(sacai[whichSacai], width/2, height/2, width/2, height/3);
  fill(0);
  ellipse(mouseX,mouseY, 20,20);
  
  if (mouseX>350){
    fill(255);
  text("Nike x Sacai", 300,200);

  }
  
  Border(30,30,125,134,255);
  Border(670,30,125,134,255);
  frame(width/4.5,height/4);
}

void mousePressed() {
  whichSacai=int(random(sacai.length));
}

void keyPressed(){
  
  println(whichSacai);
}

void Border(int x,int y, float r,float g, float b){
  r= random (0, 255);
  g= random (0, 255);
  b= random (0, 255);
  
  
  while (y<width) { 
    noStroke();
    fill(r,g,b);
    ellipse (x, y, 50, 50);
    y= y+80;
  }  
}

void frame(float x, float y){
  strokeWeight(16);
  noFill();
  stroke(255);
rect(x,y,400,300);

}
