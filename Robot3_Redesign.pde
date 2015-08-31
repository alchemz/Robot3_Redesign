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
void setup() {
  size(900, 538);
   bg = loadImage("moon.jpg");
  smooth();
  strokeWeight(2);
  ellipseMode(RADIUS);
  bo=loadImage("body.jpg");
}

void draw() {
    background(bg);
  int targetX = mouseX;
  x += (targetX - x) * easing;
    
  if (mousePressed) {
    neckHeight = 30;
    bodyHeight = 90; 
  } else {
    neckHeight = 100;
    bodyHeight = 120; 
  }
  
  float ny = y - bodyHeight - neckHeight - radius;
  
 
  
  // Neck
  stroke(102);
  line(x+12, y-bodyHeight, x+12, ny); 

  // Antennae
  line(x+12, ny, x-18, ny-43);
  line(x+12, ny, x+42, ny-99);
  line(x+12, ny, x+78, ny+15);

  // Body
  noStroke();
  fill(102);
  ellipse(x, y-33, 33, 33);
  fill(#80B7F0);
   image(bo, x-45, y-bodyHeight,90,bodyHeight-33);
  //rect(x-45, y-bodyHeight, 90, bodyHeight-33);

  // Head
  fill(#80B7F0);
  ellipse(x+12, ny, radius, radius); 
  fill(255);
  ellipse(x+24, ny-6, 14, 14);
  fill(0);
  ellipse(x+24, ny-6, 3, 3);
  
  //shaow
  ellipseMode(CENTER);
  ellipse(x+5, y-10, 33, 10);
}
