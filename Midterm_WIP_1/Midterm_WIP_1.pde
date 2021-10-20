String state= "pregame";
PImage[] sacai= new PImage [6];

void setup(){
  size (700,700);
  textAlign(CENTER);
  textSize(24);
  
  sacai[0]= loadImage ("sacai.jpg");
  sacai[1]= loadImage ("sacaiB.jpg");
  sacai[2]= loadImage ("sacaiC.jpg");
  sacai[3]= loadImage ("sacaiD.jpg");
  sacai[4]= loadImage ("sacaiE.jpg");
  sacai[5]= loadImage ("sacaiF.jpg");

}

void draw() {
  if (state=="pregame") {
    pregame();
  } else if (state=="game") {
    game();
  } else if (state=="gameover") {
    gameover();
  }
  println(state);
}

void pregame() {
  background(0);
  text("Would you like to learn about the Nike x Sacai collab?",width/2,height/2);
  }
  
  
void game(){
  background(202,220,202);
  Border(30,30,125,134,255);
  Border(670,30,125,134,255);
  if (mouseX>600){
    state ="gameover";
  }
  
  
}  

void gameover(){
background(0);
text("Congrats",width/2,width/2);
}

void mousePressed() {
  if (state== "pregame") {
    state="game";
  } else if (state=="gameover") {
    state= "pregame";
  }
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
