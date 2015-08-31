// Robot 3: Response from "Getting Started with Processing" 
// by Reas & Fry. O'Reilly / Make 2010
// Use the drawRobot function to create several robots, and set up the interactions between.
float x = 60;          // X-coordinate
float y = 440;         // Y-coordinate
int radius = 45;       // Head Radius
int bodyHeight = 160;  // Body Height
int neckHeight = 70;   // Neck Height
PImage bg;
float easing = 0.02;
PImage bo;
float w=20, z=10;
float l=x+10;
float n=y+10;
import ddf.minim.*;
Minim minim;
AudioPlayer player;

void setup() {
  size(900, 538);
  bg = loadImage("moon.jpg");
  smooth();
  strokeWeight(2);
  ellipseMode(RADIUS);
  bo=loadImage("body.png");

  minim = new Minim(this);
  player = minim.loadFile("bouncing.mp3", 2048);
}

void mousePressed()
{
  neckHeight = 30;
  bodyHeight = 90; 
  player.play();
  w=w*2;
  z=z*2;
  /* line(x+12, ny, x-18, ny-43);
   line(x+12, ny, x+42, ny-99);
   line(x+12, ny, x+78, ny+15);
   */
   
}

void mouseReleased()
{
  neckHeight = 100;
  bodyHeight = 120; 
  player.close();
  player = minim.loadFile("bouncing.mp3", 2048);
  w=w/2;
  z=z/2;
}
void draw() {
  background(bg);
  int targetX = mouseX;
  x += (targetX - x) * easing;
  /*   
   if (mousePressed) {
   neckHeight = 30;
   bodyHeight = 90; 
   player.play();
   } else {
   neckHeight = 100;
   bodyHeight = 120; 
   }
   */
  float ny = y - bodyHeight - neckHeight - radius;



  // Neck
  stroke(102);
  line(x+12, y-bodyHeight, x+12, ny); 
  // Antennae
  line(x+12, ny, x-18, ny-43);
  line(x+12, ny, x+42, ny-99);
  line(x+12, ny, x+78, ny+15);
  noFill();
  //signal
  ellipse(x-18, ny-43, w, z);
  ellipse(x-18, ny-43, 2*w, 2*z);
  ellipse(x-18, ny-43, 3*w, 3*z);    
  ellipse(x+42, ny-99, w, z);
  ellipse(x+42, ny-99, 2*w, 2*z);
  ellipse(x+42, ny-99, 3*w, 3*z);
  ellipse(x+78, ny+15, w, z);
  ellipse(x+78, ny+15, 2*w, 2*z);
  ellipse(x+78, ny+15, 3*w, 3*z);
  // Body
  noStroke();
  fill(#80B7F0);
  rect(x-45,y-bodyHeight, 90, bodyHeight-33);
  image(bo, x-45, y-bodyHeight, 90, bodyHeight-33);
  // Head
  fill(#80B7F0);
  ellipse(x+12, ny, radius, radius); 
  fill(255);
  ellipse(x+24, ny-6, 14, 14);
  fill(0);
 ellipse(x+24, ny-6, 3, 3);
  //shaow
  ellipseMode(CENTER);
  ellipse(x+5, y-10, 60, 10);
  
 float l=width-x-40;;
 float g=y+60-40;
 float ng = g - bodyHeight - neckHeight - radius;
  // Neck2
  stroke(102);
  line(l+12, g-bodyHeight, l+12, ng); 
  // Antennae2
  line(l+12, ng, l-18, ng-43);
  line(l+12, ng, l+42, ng-99);
  line(l+12, ng, l+78, ng+15);
  noFill();
  //signal2
  ellipse(l-18, ng-43, w+20, z+20);
  ellipse(l-18, ng-43, 2*w+20, 2*z+20);
  ellipse(l-18, ng-43, 3*w+20, 3*z+20);    
  ellipse(l+42, ng-99, w+20, z+20);
  ellipse(l+42, ng-99, 2*w+20, 2*z+20);
  ellipse(l+42, ng-99, 3*w+20, 3*z+20);
  ellipse(l+78, ng+15, w+20, z+20);
  ellipse(l+78, ng+15, 2*w+20, 2*z+20);
  ellipse(l+78, ng+15, 3*w+20, 3*z+20);
  // Body2
   noStroke();
  fill(#80B7F0);
   rect( l-45, g-bodyHeight, 120, bodyHeight-10);
 
  image(bo, l-45, g-bodyHeight, 120, bodyHeight-3);
 
 
  // Head2
  fill(#80B7F0);
  ellipse(l+12, ng, radius*3/2, radius*3/2); 
  fill(255);
  ellipse(l, ng-6, 14, 14);
  fill(0);
  ellipse(l, ng-6, 3, 3);
  //shaow2
  ellipseMode(CENTER);
  ellipse(l+10, g, 100, 10);
}

