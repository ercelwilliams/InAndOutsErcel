//Fall Colors By Ercel Williams
//INSTRUCTIONS
//Slide mouse left to right to have backgoround change 
​
​
​
​
boolean button = false; //
float r; //random rgb float
float g;
float b;
float a;
​
​
int rectA = 350;
int rectB = 80;
int rectC = 190;
int tri = 400;
​
void setup() {
size (1080, 720);
​
println ("Fall Colors By Ercel Williams ");
println ("First Day of Fall is September 22, 2021!!");
​
}
​
void draw() {
  r = random(255);
  g = random(255);
  b = random(255);
  a = random(255);
  
background(214, 62, 32);  
​
if (button) 
  { background(255); stroke(0); 
        } else { 
            background(0); stroke(255); 
          }
​
//shifts color background
if (mouseX < width/4) { 
  background(214, 62, 32);; 
    } else if (mouseX < 2*width/4) { 
         background(148, 63, 47); } 
       else if (mouseX < 3*width/4) { 
         background(107, 54, 44);
              } else { background(0); 
            }
​
//sun
fill(214, 87, 32);
noStroke();
ellipse(mouseX, mouseY, 120 ,120);
​
//land
fill (171, 89, 2);
rect(0,450,1100,900);
​
//tree trucks
fill (214, 87, 32);
stroke (0);
rect(200, rectA, rectB, rectC);
rect(400, rectA, rectB, rectC);
rect(600, rectA, rectB, rectC);
rect(800, rectA, rectB, rectC);
​
//leaves
fill (r,g,b,a);
triangle(130, tri, 232, 120, 344, tri);
​
fill (r,g,b,a);
triangle(330, tri, 432, 120, 544, tri);
​
fill (r,g,b,a);
triangle(530, tri, 632, 120, 744, tri);
​
fill (r,g,b,a);
triangle(730, tri, 832, 120, 944, tri);
​
}
​
//whrn key pressed background changes to black
void keyPressed() {
  background (0);
}
