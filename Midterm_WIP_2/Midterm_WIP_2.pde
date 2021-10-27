String state= "pregame";

PImage[] sacai= new PImage [6];
int whichSacai = 0;
int posSacai = 0;
int posbio = 0;
String[] bio={"Nike X Sacai X Fragment", "Nike X Sacai OG", "Nike X Sacai X Clot"};





void setup(){
  size (700,700);
  textAlign(CENTER);
  textSize(24);
  
  sacai[0]= loadImage ("sacaiF.jpg");
  sacai[1]= loadImage ("sacaiE.jpg");
  sacai[2]= loadImage ("sacaiC.jpg");
  sacai[3]= loadImage ("sacaiD.jpg");
  sacai[4]= loadImage ("sacai.jpg");
  sacai[5]= loadImage ("sacaiB.jpg");

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
  mouseX=0;
  background(0);
  text("Would you like to learn about the Nike x Sacai collab?",width/2,height/2);
  text("Press '1' for YES!",width/3,400);
  text("Press '2' for NO!",500,400);

  if (keyPressed){
    if (key == '1'){
      state = "game";
    }
    else if (key == '2'){
      state = "mad";
    }
  }
}
 
  
void game(){
  background(202,220,202);
  Border(30,30,125,134,255);
  Border(670,30,125,134,255);
  
  fill(255);
  text("This is " + bio[posbio],300,100);
  
  
  image(sacai[whichSacai], width/8, height/3.5,width/1.3,height/1.75);
 
  if (mouseX>600){
    state ="gameover";
  }
}




void keyPressed(){
 if (state=="game"){
  // if(key=='1'){
    // whichSacai++;
    //} 
    if (whichSacai ==sacai.length-1){
      whichSacai=0;
    }
    else{
      whichSacai++;
    }
    whichSacai=int(random(0,sacai.length));
   
    
  }
}
  
 

void gameover(){
background(0);
text("Congrats",width/2,width/2);
}

void mousePressed() {
  //if (state== "pregame") {
  // state="game";
 // } else 
 if (state=="gameover") {
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

void mad(){
  background(345,48,90);
  text("mad",200,200);

}
