int dm = 100;
Circle a, b;
color bg = color(0);

void setup() {
  size(640, 480);
  frameRate(10);
  a = new Circle(width/2, height/2, dm, color(255, 0, 0));
  b = new Circle(width/4, height/4, dm, 255);
}

void draw() {
  background(bg);
  //ellipseMode(CENTER);
  a.display();
  a.changeDiameter();
  a.fall();
  b.display();
  b.fall();
  
}


class Circle {
  
  float x, y, d;
  color clr;
  
  Circle( float xpos, float ypos, float diam, color fill ) {
    
    x = xpos;
    y = ypos;
    d = diam;
    clr = fill;
    
  }
  
  void display() {
    fill(clr);
    noStroke();
    ellipse(x, y, d, d);
  }
  
  void changeDiameter() {
    d = random(10, 100);
  }
  
  void fall() {
    y += 1;
  }
}