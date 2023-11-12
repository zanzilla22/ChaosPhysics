import peasy.*;

float x = 0.01;
float y = 0;
float z = 0;

float a = 0.2;
float b = 0.01;
float c = -0.4;

ArrayList<PVector> points = new ArrayList<PVector>();

PeasyCam cam;

void setup() {
  size(800, 600, P3D);
  colorMode(HSB);
  cam = new PeasyCam(this, 500);
}

void draw() {
  background(0);
  float dt = 0.1;
  float dx = ((a* x)+(y*z)) *dt;
  float dy = ((b * x) + (c*y)) *dt;
  float dz = ((-z) -(x*y)) *dt;
  x = x + dx;
  y = y + dy;
  z = z + dz;

  points.add(new PVector(x, y, z));

  translate(0, 0, -80);
  //translate(width/2, height/2);
  scale(5);
  stroke(255);
  noFill();

  float hu = 0;
  beginShape();
  for (PVector v : points) {
    stroke(hu, 255, 255);
    vertex(v.x, v.y,v.z);
    //PVector offset = PVector.random3D();
    //offset.mult(0.1);
    //v.add(offset);

    hu += 0.1;
    if (hu > 255) {
      hu = 0;
    }
  }
  endShape();


  //println(x,y,z);
}
