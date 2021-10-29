String state= "pregame";
PImage[] sacai= new PImage [6];
PImage madpic;
int whichSacai=0;

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
  madpic=loadImage("mad.png");

}

void draw() {
  if (state=="pregame") {
    pregame();
  } else if (state=="game") {
    game();
  } else if (state=="gameover") {
    gameover();
  }
  else if (state=="mad") {
    mad();
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
 // if (mouseX>600){
   // state ="gameover";
  //}
  image(sacai[whichSacai], width/8, height/3.5,width/1.3,height/1.75);
  
}  

void gameover(){
background(0);
text("Congrats",width/2,width/2);
}

void mousePressed() {
if (state=="gameover") {
    state= "pregame";
  }
if (state=="mad"){
  state="pregame";

}
}
void keyPressed(){
if(state=="pregame"){
  if (key=='1'){
  state="game";
  }
  if (key=='2'){
  state="mad";
  }
}
if(state=="game"){
  if (key=='1'){
  whichSacai=int(random(sacai.length));
  }
  if (key=='2'){
  state="gameover";
  }
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

void mad(){
  background(345,48,90);
  fill(255);
  image(madpic,height/8,width/6);

}
