int[] b = {10, 2, 5};

void setup() {
  size(400, 400);
}

void draw() {
  
  background(0);
  
  int j = 0;
  while ( j < 3 ) {
    ellipse(width/2 + (20 * j), height/2, b[j], b[j]);
    println(j);
    j++;
  }

}