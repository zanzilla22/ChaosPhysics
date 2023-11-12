import peasy.*;


float x = 1;
float y = 1;
float z = 1;
float dx;
float dy;
float dz;

float a = 10;
float b = 28;
float c = 8/3;

float colour = 0;
float colMultiplier = 1;

PeasyCam cam;

void setup()
{
  background(0);
  size(800, 600, P3D);
  
  //cam = new PeasyCam(this, 5000);
}
void draw()
{
  float px = x;
  float py = y;
  float pz = z;
  
  float a = 3;
  float b = 2.7;
  float c = 1.7;
  float d = 2;
  float e = 9;
  
  float t = 0.01;
  dx = ((y - a*x) + b * y * z) * t;
  dy = ((c * y) - (x * z) + z) * t;
  dz = ((d * x * y) - e * z) * t;
  float offset = random(-2, 2);
  x += dx;
  y += dy;
  z += dz;
  translate(width/2, height/2);
  //stroke(colour * random(-3, 3), colour * random(-3, 3), colour * random(-3, 3));
  scale(5);
  //line(px, py, pz, x, y, z);

  println(x, y, z, " - ", px, py, pz);
  //lights();
  
  
  stroke(200);
  //stroke(random(0, 255), random(0, 255), random(0, 255));
  strokeWeight(1);
  point(x, y, z);
  
  colour += 1 * colMultiplier;
  if ((colour > 255) || (colour < 0))
  {
    colMultiplier = colMultiplier * -1;
  }
}
//made by Zane Copyright hahaha ur stinky
