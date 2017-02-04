PFont helvetica;
int horShift = 60;
color c = color(0); 

void setup() {
  
  size(640, 480);
  
  frameRate(25);
  helvetica = createFont("Helvetica", 24);
  
}

void draw() {
  
  background(255);
  
  fill(c);
  noStroke();
  
  ellipse(width/2 - horShift, height/2, 48, 48);
  
  textFont(helvetica);
  textLeading(28);
  textAlign(LEFT, CENTER);
  
  text("bang bang\neducation", width/2 - horShift + 40, height/2 - 4);

}

void mousePressed() {
  c = color( random(0, 255), 0, 0 );
  //println("press");
}