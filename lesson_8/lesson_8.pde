int x = 10;
float y = 10000;

void setup() {
  size(400, 400, P3D);
}

void draw() {
  
  background(0, 0, 0);
  
  println(x + y);
  
  if (mouseX > width/2) {
    println("Right half of the screen");
    fill(255, 255, 0);
  } else {
    println("Left half of the screen");
    fill(255, 0, 0);
  }
  
  drawShape();
  
  drawEllipse();
  
  drawRectangle();
  
}

void drawEllipse() {
  float diam = 100;
  ellipse(height/2, width/2, diam, diam);
}


void drawShape() {
  
  translate(50, 50);
  stroke(255, 0, 0);
  beginShape();
  vertex(-40, -40, -10);
  vertex(40, -40, 0);
  vertex(40, 40, 10);
  vertex(-40, 40, 10);
  endShape(CLOSE);
  
}

void drawRectangle() {
  
  println("Hello World!");
  rect(100, 100, 100, 100);
  
}

void mouseClicked() {
  println(x + y);
}