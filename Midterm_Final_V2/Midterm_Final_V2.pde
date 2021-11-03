//Nike x Sacai Collab
//Visual experience that shows the background of the sportswear brand Nike
//with Japanese brand "Sacai"

String state= "pregame";
PImage[] sacai= new PImage [6];
PImage[] vapor= new PImage [6];
PImage madpic;
int whichSacai=0;
int whichVapor = 0;
int posSacai = 0;
int posbio = 0;

//text string for game
String[] bio={"Nike X Sacai OG Black & White",
"Nike X Sacai White Nylon",
"Nike X Sacai X Clot",
"Nike X Sacai X Undercover",
"Nike X Sacai X Fragment Grey", 
"Nike X Sacai X Fragment Blue Void"};

//text string for game2
String[] bio2={"Dark Idris",
"Black and White",
"Neptune Green",
"Forest Gump",
"Seaesme", 
"White and Gum"};

//text for history about the background of the collaboration
String [] info = {"Nike is a popular sportswear comapny",
"Nike strives to push innovation in sportwears.",
"Nike has teamed with several collaborators to push further with innovation.",
"Sacai was actually founded and directed by a female Japanese designer, Chitose Abe ",
"Through her garments and footwear, she has become a prominent voice",
"and inspiration to the next generation of designers.",
"The designer decided to enhance popular nike silhouette models such as the",
" Nike Blazer, Nike Peagus, and Nike Vaporfly",
" "
};

int posbio2=0;
 int posinfo=0;
 
 
void setup(){
  size (700,700);
  textAlign(CENTER);
  textSize(24);
  
  //image array for game
  sacai[0]= loadImage ("sacai.jpg");
  sacai[1]= loadImage ("sacaiB.jpg");
  sacai[2]= loadImage ("sacaiC.jpg");
  sacai[3]= loadImage ("sacaiD.jpg");
  sacai[4]= loadImage ("sacaiE.jpg");
  sacai[5]= loadImage ("sacaiF.jpg");
  
  //image array for game2
  vapor[0]= loadImage ("vapor.jpeg");
  vapor[1]= loadImage ("vapor2.jpeg");
  vapor[2]= loadImage ("vapor3.jpg");
  vapor[3]= loadImage ("vapor4.jpeg");
  vapor[4]= loadImage ("vapor5.jpeg");
  vapor[5]= loadImage ("vapor6.jpeg");
  
  //image for mad
  madpic=loadImage("mad.png");

}

void draw() {
  if (state=="pregame") {
    pregame();
  } else if (state=="game") {
    game();
     } else if (state=="game2") {
    game2();
  } else if (state=="gameover") {
    gameover();
  }
  else if (state=="mad") {
    mad();
  }
   else if (state=="history") {
    history();
  }
    else if (state=="choice") {
    choice();
  }
  println(state);
}

void pregame() {
  textSize(24);
  //press 1 to got to game. Press 2 to go to mad
  background(0);
  text("Would you like to learn about the Nike x Sacai collab?",width/2,height/2);
  text("Press '1' for YES!",width/3,400);
  text("Press '2' for NO!",500,400);
  }
  
void choice() {
  textSize(20);
  //press 1 to got to game. Press 2 to go to vaporfly
  // this state is for picking which model to learn about
  background(0);
  fill(255);
  text("Pick a model",width/2,height/2);
  text("Press '1' for the waffle racer",width/3,400);
  text("Press '2' for the vaporfly",500,400);
  }
  
void game(){
  //"game mode" for the sacai waffle model
  // pressing 1 randomly cycles through the 'sacai' array images 
  // with the corresponding text string associated with it from bio
  textSize(24);
  posinfo=0;
  background(202,220,202);
  Border(30,30,125,134,255);
  Border(670,30,125,134,255);
  image(sacai[whichSacai], width/8, height/3.5,width/1.3,height/1.75);
  fill(0);
  text("Press 1 to see the different colorways.",height/2,75);
   text("This is Nike Sacai Waffle" + bio[posbio],height/2,150);
  text("Press 2 to quit",height/2,650);
  
  if(whichSacai==1){
    posbio=0;
  }
  if (whichSacai==2){
    posbio=1;
  }
   if (whichSacai==3){
    posbio=2;
  }
   if (whichSacai==4){
    posbio=3;
  }
   if (whichSacai==5){
    posbio=4;
  }
   if (whichSacai==6){
    posbio=5;
  }
}
void game2(){
    //"game mode 2" for the sacai vaporfly model
  // pressing 1 randomly cycles through the 'vapor' array images 
  // with the corresponding text string associated with it from bio2
  textSize(24);
  posinfo=0;
  background(202,220,202);
  Border(30,30,125,134,255);
  Border(670,30,125,134,255);
  image(vapor[whichVapor], width/8, height/3.5,width/1.3,height/1.75);
  fill(0);
  text("Press 1 to see the different colorways.",height/2,75);
   text("This is Nike x Sacai Vaporfly " + bio2[posbio2],height/2,150);
  text("Press 2 to quit",height/2,650);
  
  if(whichVapor==1){
    posbio2=0;
  }
  if (whichVapor==2){
    posbio2=1;
  }
   if (whichVapor==3){
    posbio2=2;
  }
   if (whichSacai==4){
    posbio2=3;
  }
   if (whichVapor==5){
    posbio2=4;
  }
   if (whichVapor==6){
    posbio2=5;
  }
}

void gameover(){
  //final screen showing you have completed
  //click the screen to play again
 posinfo=0;
background(0);
fill(255);
text("Congrats! CLick the screen to try again!",width/2,width/2);
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
  state="history";
  }
  if (key=='2'){
  state="mad";
  }
}

if(state=="choice"){
  if (key=='1'){
  state="game";
  }
  if (key=='2'){
  state="game2";
  }
}

if (state=="game2"){
  if (key=='1'){
    whichVapor=int(random(vapor.length));
  }
  if (key==2){
    state="gameover";  
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



if(state=="history"){
  if (key=='1'){
  posinfo++;
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
  text("Oh you don't want to? Click the screen to try again!",height/2,100);
  image(madpic,height/10,width/6);
}

void history(){
  background(255);
  fill(0);
  textSize(16);
  text("Press 1 to contiue",height/2,50);
  text(info[posinfo],height/2,width/2);
  if(posinfo==8){
    state="choice";
  }


}
