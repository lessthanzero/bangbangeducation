color bgColor = color(0, 0, 0),
      primaryColor = color(255, 255, 255);
      
int fRate = 30;

void setup() {
  size(400, 400, P3D);
  frameRate(fRate);
  background(bgColor);
}

void draw() {
  
  ambientLight(255, 64, 255);
  directionalLight(128, 200, 64, 0, 0, 1);
  
  drawSphere();
}

void drawSphere() {
  float diameter = random(10, 30);
  float zIndex = random(-150, 150);
  color fillColor = color(random(0, 255), random(0, 255), random(0, 255));
  fill(fillColor);
  noStroke();
  
  translate( mouseX, mouseY,  zIndex );
  sphere(20);
  translate( -1 * mouseX, -1 * mouseY, -1 * zIndex );
  
  
}