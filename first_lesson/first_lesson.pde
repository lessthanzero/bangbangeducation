PFont helvetica = createFont("Helvetica", 24);

int horizontalShift = 64;

size(640, 480);
background(255);

//ellipseMode(CENTER);
fill(0);
ellipse(width/2 - horizontalShift, height/2, 48, 48);

textFont(helvetica);
//textLeading(28);
textAlign(LEFT, CENTER);
text("bang bang\neducation", (width/2 + 40) - horizontalShift, height/2 - 5);