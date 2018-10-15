double y;
double x;
float scale = 10;

ArrayList<PVector> points = new ArrayList<PVector>();

void setup() {
  
  size(800, 800);
  
  x = -scale;
  
}

void mousePressed() {
  
  println(map(mouseX, 0, width, -scale, scale), map(mouseY, height, 0, -scale, scale));
  
}

void draw() {
  
  background(0);
  translate(width/2, height/2);
  stroke(255);
  noFill();
  
  line(0, -height/2, 0, height/2);
  line(-width/2, 0, width/2, 0);
  
  if (x <= scale) {
    x += 0.05;
    y = (1.0/10.0)*x*x;
//    Math.pow(x, x)
//    Math.sin(x)
//    Math.pow(Math.E, x)
//    (1.0/10.0)*x*x
    points.add(new PVector(map((float) x, -scale, scale, -width/2, width/2), map((float) y, -scale, scale, height/2, -height/2)));
  }
  
  beginShape();
  for (PVector v : points) {
      vertex(v.x, v.y);
    }
  endShape();
  
}